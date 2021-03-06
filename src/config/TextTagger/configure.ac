#
# File: src/config/TextTagger/configure.ac
# Creator: George Ferguson
# Created: Tue Sep  9 10:27:15 2008
# Time-stamp: <Tue Sep  9 13:44:10 EDT 2008 ferguson>
#
# Process this file with autoconf to produce a configure script.
#

AC_INIT(TRIPS-config-TextTagger, 2008-09-09, wdebeaum@cs.rochester.edu)
AC_CONFIG_SRCDIR([defs.mk.in])
AC_CONFIG_AUX_DIR([../auto])

AC_CANONICAL_TARGET
AC_SUBST(TARGET, "$target")

ac_packages='geonames ner postagger parser cj_parser biomodel umls semgroups metamap corenlp enju aspell'

AC_ARG_WITH(texttagger-prefix,
	    AC_HELP_STRING([--with-texttagger-prefix],
			   [locate TextTagger resources dir]))
ac_prefixes=${with_texttagger_prefix:-'/p/nl /usr/local/share'}

function expand_paths () {
  for my_prefix in $ac_prefixes; do
    for my_suffix in $@; do
      echo $my_prefix/$my_suffix
    done
  done
}

# like expand_paths, but sort wildcard matches in reverse numerical order so we
# try later versions first
function expand_versioned_paths () {
  for my_prefix in $ac_prefixes; do
    for my_suffix in $@; do
      echo $my_prefix/$my_suffix |tr ' ' '\n' |sort -rg
    done
  done
}

# Warning: using wildcards in expand*paths arguments will first try to match
# from the directory configure was called from. This is mostly OK since we
# don't have any of these directories in $TRIPS_BASE/src/, but it's something
# to be aware of.

ac_geonames_search_list=`expand_versioned_paths geonames/????-??-??/NationalFile.zip`
ac_ner_search_list=`expand_paths stanford-ner/stanford-ner-2007-11-05/`
ac_postagger_search_list=`expand_paths stanford-postagger/stanford-postagger-2008-06-06/`
ac_parser_search_list=`expand_paths stanford-parser/stanford-parser-2007-08-19/`
ac_cj_parser_search_list=`expand_paths cj-parser/reranking-parser/`
ac_biomodel_search_list=`expand_paths cj-parser/biomodel/`
ac_umls_search_list=`expand_paths UMLS/2010AB/ UMLS/2009AA/`
ac_semgroups_search_list=`expand_paths UMLS/SemGroups.txt`
ac_metamap_search_list=`expand_paths UMLS/MetaMap/public_mm/`
# CoreNLP's search list is convoluted because Stanford hasn't been very
# consistent about whether the version is major.minor.patch or YYYY-MM-DD; some
# versions can be downloaded with filenames in either format, but lately
# they're only offering major.minor.patch. In this list, the YYYY-MM-DD format
# of each version (if it exists) comes before the major.minor.patch format of
# the same version.
ac_corenlp_search_list="`expand_versioned_paths stanford-corenlp/stanford-corenlp-4.*.*/` `expand_paths stanford-corenlp/stanford-corenlp-{full-2018-10-05,3.9.2,full-2018-02-27,3.9.1,full-2017-06-09,3.8.0,full-2016-10-31,3.7.0,full-2015-12-09,3.6.0,full-2015-04-21,full-2015-04-20,3.5.2,full-2015-01-29,3.5.1,full-2014-10-31,3.5.0,full-2014-08-27,3.4.1,full-2014-06-16,3.4.0,3.4,2010-11-12}` `expand_versioned_paths stanford-corenlp/stanford-corenlp-full-????-??-??/ stanford-corenlp/stanford-corenlp-????-??-??/`"
ac_enju_search_list=`expand_paths enju/enju-2.4.2/enju`
ac_aspell_search_list=`which aspell || echo /usr/bin/aspell /usr/local/bin/aspell /opt/local/bin/aspell`

AC_ARG_WITH(geonames,
	    AC_HELP_STRING([--with-geonames],
			   [locate USGS NationalFile.zip for TextTagger]))
AC_SUBST(TEXTTAGGER_geonames)

AC_ARG_WITH(ner,
	    AC_HELP_STRING([--with-ner],
			   [locate NER dir for TextTagger]))
AC_SUBST(TEXTTAGGER_ner)

AC_ARG_WITH(postagger,
	    AC_HELP_STRING([--with-postagger],
			   [locate POS tagger dir for TextTagger]))
AC_SUBST(TEXTTAGGER_postagger)

AC_ARG_WITH(parser,
	    AC_HELP_STRING([--with-parser],
			   [locate Stanford Parser dir for TextTagger]))
AC_SUBST(TEXTTAGGER_parser)

AC_ARG_WITH(cj_parser,
	    AC_HELP_STRING([--with-cj-parser],
			   [locate Charniak-Johnson reranking parser dir for TextTagger]))
AC_SUBST(TEXTTAGGER_cj_parser)

AC_ARG_WITH(biomodel,
	    AC_HELP_STRING([--with-biomodel],
			   [locate McClosky-Charniak biomodel dir for TextTagger]))
AC_SUBST(TEXTTAGGER_biomodel)

AC_ARG_WITH(umls,
	    AC_HELP_STRING([--with-umls],
			   [locate UMLS dir for TextTagger]))
AC_SUBST(TEXTTAGGER_umls)

AC_ARG_WITH(semgroups,
	    AC_HELP_STRING([--with-semgroups],
			   [locate UMLS SemGroups.txt file for TextTagger]))
AC_SUBST(TEXTTAGGER_semgroups)

AC_ARG_WITH(metamap,
	    AC_HELP_STRING([--with-metamap],
			   [locate UMLS MetaMap dir for TextTagger]))
AC_SUBST(TEXTTAGGER_metamap)

AC_ARG_WITH(corenlp,
	    AC_HELP_STRING([--with-corenlp],
			   [locate Stanford CoreNLP dir for TextTagger]))
AC_SUBST(TEXTTAGGER_corenlp)

AC_ARG_WITH(enju,
	    AC_HELP_STRING([--with-enju],
			   [locate Enju parser executable for TextTagger]))
AC_SUBST(TEXTTAGGER_enju)

AC_ARG_WITH(aspell,
	    AC_HELP_STRING([--with-aspell],
			   [locate aspell executable for TextTagger]))
AC_SUBST(TEXTTAGGER_aspell)

for pkg in $ac_packages; do
    eval "ac_with_pkg=\"\$with_${pkg}\""
    if test "$ac_with_pkg" = no ; then
	eval "TEXTTAGGER_$pkg=''"
    else
	AC_MSG_CHECKING([for $pkg])
	ac_pkg_found=no
	if test "$ac_with_pkg"; then
	    ac_pkg_search_list="$ac_with_pkg"
	else
	    eval "ac_pkg_search_list=\"\$ac_${pkg}_search_list\""
	fi
	for x in $ac_pkg_search_list; do
	    if test -e $x; then
		AC_MSG_RESULT($x)
		ac_pkg_found=yes
		eval "TEXTTAGGER_$pkg='$x'"
		break
	    fi
	done
	if test "$ac_pkg_found" = no; then
	    if test -z "$ac_with_pkg"; then
		AC_MSG_RESULT([not found (use --with-$pkg if this isn't ok)])
		eval "TEXTTAGGER_$pkg=''"
	    else
		AC_MSG_RESULT([not found (but assuming \"$ac_with_pkg\")])
		eval "TEXTTAGGER_$pkg='$ac_with_pkg'"
	    fi
	fi
    fi
done
if test "$target" == "i686-pc-cygwin"; then
    for pkg in ner postagger; do
	eval "TEXTTAGGER_$pkg=\`cygpath -w \\\$TEXTTAGGER_$pkg |perl -p -e 's/\\\\\\\\/\\\\\\\\\\\\\\\\/g; s/\\\\\\\"/\\\\\\\\\\\\\\\"/g; s/^/\\\"/; s/\\\$/\\\"/;'\`"
    done
fi

#
# terms2.cpp stuff
#

AC_SUBST(TEXTTAGGER_CXXFLAGS)
AC_SUBST(TEXTTAGGER_LDFLAGS)
AC_PROG_CXX
AC_LANG(C++)

# Kludgy workaround for DRUM ticket #44: check whether we're using Clang<10, and
# if so, tell it to use GCC's libstdc++ instead of its own; newer Clangs we
# can't use because they don't let us use libstdc++, and their own libc++ has a
# bug that affects terms2.cpp
AC_MSG_CHECKING([for C++ flavor])
if $CXX --version 2>/dev/null |grep -q 'clang-\d\d\d\.' ; then
  AC_MSG_RESULT([clang<10])
  TEXTTAGGER_CXXFLAGS='-O3 -stdlib=libstdc++'
  TEXTTAGGER_LDFLAGS='-stdlib=libstdc++'
elif $CXX --version 2>/dev/null |grep -q 'clang-\d\d\d\d\.' ; then
  AC_MSG_RESULT([clang>=10])
  AC_MSG_ERROR([TextTagger cannot use this C++ compiler. Please install and configure GCC instead. The g++ in XCode is actually Clang, and as of version 10 it no longer includes libstdc++, which would force us to use its libc++ instead, which has a bug that affects terms2.cpp. You can easily install GCC on a Mac using MacPorts (sudo port install gcc8) or Homebrew (brew install gcc). Then set CXX to the path to the g++ program from GCC (e.g. for MacPorts you would run configure like this: CXX=/opt/local/bin/g++-mp-8 ./configure).])
else
  AC_MSG_RESULT([assuming g++])
  TEXTTAGGER_CXXFLAGS='-O3'
fi

# Big ugly test for which locale setting method to use
AC_LANG_CONFTEST([AC_LANG_SOURCE([[
#include <string>
#include <sstream>
#include <iostream>
#include <fstream>
#include <stdexcept>
#ifdef USE_C_STYLE_SETLOCALE
#include <clocale>
#else
#include <locale>
#endif
int main(int argc, char** argv) {
#ifdef USE_C_STYLE_SETLOCALE
  if (!setlocale(LC_ALL, "en_US.UTF-8")) {
    std::wcerr << "setlocale failed" << std::endl;
    return 1;
  }
#else
  try {
    std::locale loc("en_US.UTF-8");
    loc.global(loc);
  } catch (std::runtime_error& e) {
    std::wcerr << "locale::global failed" << std::endl;
    return 1;
  }
#endif
  std::wfstream f("conftest.data", std::wfstream::in);
  std::wstring str;
  if (!std::getline(f, str)) {
    std::wcerr << "getline failed" << std::endl;
    return 2;
  }
  if (str.length() != 5) {
    std::wcerr << str.length() << " characters read; expected 5" << std::endl;
    return 3;
  }
  return 0;
}
]])])
echo "H—Ras" >conftest.data
AC_MSG_CHECKING([whether C++-style locale setting works])
if $CXX -o conftest $TEXTTAGGER_CXXFLAGS conftest.cpp && ./conftest ; then
  AC_MSG_RESULT([yes])
else
  AC_MSG_CHECKING([whether C-style locale setting works])
  if $CXX -o conftest $TEXTTAGGER_CXXFLAGS -DUSE_C_STYLE_SETLOCALE conftest.cpp && ./conftest ; then
    AC_MSG_RESULT([yes])
    TEXTTAGGER_CXXFLAGS="$TEXTTAGGER_CXXFLAGS -DUSE_C_STYLE_SETLOCALE"
  else
    AC_MSG_RESULT([no])
    if test -d ../../TextTagger/terms2 ; then
      AC_MSG_ERROR([no working locale setting method found, required for terms2])
    fi
  fi
fi

AC_CONFIG_FILES([Makefile defs.mk])
AC_OUTPUT
