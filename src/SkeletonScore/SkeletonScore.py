#!/usr/bin/python2.7

# This is pretty much a direct translation of Hello.java into Python.

import os

from bioagents_trips.trips_module import TripsModule
from bioagents_trips.kqml_performative import KQMLPerformative
from bioagents_trips.kqml_list import KQMLList

import diesel.ontology as ontology
import diesel.library as library
import diesel.score as score

TRIPS_NAME="SkeletonScore"
TRIPS_BASE = os.environ['TRIPS_BASE']
ONTOLOGY_PATH = os.path.join(TRIPS_BASE, "etc/XMLTrips/lexicon/data")
GOLD_DATA = os.path.join(TRIPS_BASE, "etc/Data/gold.predmap")
LIBRARY=library.DEFAULT_LIBRARY

class SkeletonScore(TripsModule):
    """ Hello TRIPS module - replies to hello requests with hello tells.
    Sending this: (request :content (hello) :sender fred)
    Gets this reply: (tell :content (hello fred) :receiver fred)
    """
    def __init__(self, argv):
        TripsModule.__init__(self, argv)

    def init(self):
        self.name = TRIPS_NAME
        TripsModule.init(self)
        self.ontology = ontology.load_ontology(ONTOLOGY_PATH)
        self.gold = library.load_predmap(GOLD_DATA, self.ontology, lib_type=LIBRARY)
        self.PRED_TYPE = score.DEFAULT_PRED_TYPE
        self.send(KQMLPerformative.from_string(
            "(subscribe :content (request &key :content ("+TRIPS_NAME+" . *)))"))
        self.send(KQMLPerformative.from_string(
            "(subscribe :content (request &key :content (adjustment-factor . *)))"))
        self.send(KQMLPerformative.from_string(
            "(subscribe :content (request &key :content (score-method . *)))"))
        self.send(KQMLPerformative.from_string(
            "(subscribe :content (request &key :content (evaluate-skeleton . *)))"))
        self.ready()
        

    def receive_request(self, msg, content):
        print("requesting content")
        error = False
        if not isinstance(content, KQMLList):
            self.error_reply(msg, "expected :content to be a list")
            return
        verb = content[0].to_string().lower()
        reply_msg = KQMLPerformative("tell")
        reply_content = KQMLList()
        if verb == "hello":
            reply_content.add("hello")
            self.reply(msg, reply_msg)
        elif verb == "adjustment-factor": 
            reply_content.add("ok")
            adj_factor = content[1].to_string().lower().encode('ascii', 'ignore')
            self.gold.adjustment_factor = adj_factor
        elif verb == "score-method": #Implement me
            pred_index = int(content[1].to_string())
            if pred_index < len(score.PREDICATES) and -1 < pred_index:
                self.PRED_TYPE = score.PREDICATES[pred_index]
                reply_content.add(self.PRED_TYPE.name())
            else:
                error = True
                self.error_reply(msg, "index out of range")
        elif verb == "evaluate-skeleton": 
            predicate = content[1].to_string().lower().encode('ascii', 'ignore')
            result = self.gold.adjustment_factor(predicate, True, pred_type=self.PRED_TYPE)
            str_res = ":score ({}) :match ({})".format(result[1],str(result[0]))
            print(str_res)
            reply_content.add(str_res)
        else:
            error = True
            self.error_reply(msg, "unknown request verb " + verb)
        if not error:
            sender = msg.get_parameter(":sender")
            if sender is not None:
                reply_content.add(sender)
            reply_msg.set_parameter(":content", reply_content)
            self.reply(msg, reply_msg)
 

if __name__ == "__main__":
    import sys
    SkeletonScore(sys.argv[1:]).start()

