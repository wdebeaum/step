#!/usr/bin/jython3.5

# This is pretty much a direct translation of Hello.java into Jython.

import os

from TRIPS.TripsModule import StandardTripsModule
from TRIPS.KQML import KQMLPerformative, KQMLList

import diesel.ontology as ontology
import diesel.library as library
import diesel.score as score

TRIPS_NAME="SkeletonScore"
TRIPS_BASE = os.environ['TRIPS_BASE']
ONTOLOGY_PATH = os.path.join(TRIPS_BASE, "etc/XMLTrips/lexicon/data")
GOLD_DATA = os.path.join(TRIPS_BASE, "etc/Data/gold.predmap")

class SkeletonScore(StandardTripsModule):
    """ Hello TRIPS module - replies to hello requests with hello tells.
    Sending this: (request :content (hello) :sender fred)
    Gets this reply: (tell :content (hello fred) :receiver fred)
    """
    def __init__(self, argv):
        StandardTripsModule.__init__(self, ["-name", TRIPS_NAME] + argv)

    def init(self):
        # this doesn't work because name is protected; instead use -name in
        # __init__ as above:
        # self.name = "hello"
        StandardTripsModule.init(self)
        self.ontology = ontology.load_ontology(ONTOLOGY_PATH)
        self.gold = library.load_predmap(GOLD_DATA, self.ontology)
        self.PRED_TYPE = score.PathDistPredicate
        self.send(KQMLPerformative.fromString(
            "(subscribe :content (request &key :content ("+TRIPS_NAME+" . *)))"))
        self.send(KQMLPerformative.fromString(
            "(subscribe :content (request &key :content (adjustment-factor . *)))"))
        self.send(KQMLPerformative.fromString(
            "(subscribe :content (request &key :content (score-method . *)))"))
        self.send(KQMLPerformative.fromString(
            "(subscribe :content (request &key :content (evaluate-skeleton . *)))"))
        self.ready()
        

    def receiveRequest(self, msg, content):
        print("requesting content")
        error = False
        if not isinstance(content, KQMLList):
            self.errorReply(msg, "expected :content to be a list")
            return
        verb = content.get(0).toString().lower()
        replyMsg = KQMLPerformative("tell")
        replyContent = KQMLList()
        if verb == "hello":
            replyContent.add("hello")
            self.reply(msg, replyMsg)
        elif verb == "adjustment-factor": 
            replyContent.add("ok")
            adj_factor = content.get(1).toString().lower().encode('ascii', 'ignore')
            self.gold.adjustment_factor = adj_factor
        elif verb == "score-method": #Implement me
            pred_index = int(content.get(1).toString())
            if pred_index < len(score.PREDICATES) and -1 < pred_index:
                self.PRED_TYPE = score.PREDICATES[pred_index]
                replyContent.add(self.PRED_TYPE.name())
            else:
                error = True
                self.errorReply(msg, "index out of range")
        elif verb == "evaluate-skeleton": 
            predicate = content.get(1).toString().lower().encode('ascii', 'ignore')
            result = self.gold.adjustment_factor(predicate, True, pred_type=self.PRED_TYPE)
            str_res = ":score ({}) :match ({})".format(result[1],str(result[0]))
            print(str_res)
            replyContent.add(str_res)
        else:
            error = True
            self.errorReply(msg, "unknown request verb " + verb)
        if not error:
            sender = msg.getParameter(":sender")
            if sender is not None:
                replyContent.add(sender)
            replyMsg.setParameter(":content", replyContent)
            self.reply(msg, replyMsg)
 

if __name__ == "__main__":
    import sys
    SkeletonScore(sys.argv[1:]).run()

