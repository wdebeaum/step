#
# File: src/config/RDFMatcher/configure.ac
# Creator: William de Beaumont
# Created: 2009-01-09
#
# Process this file with autoconf to produce a configure script.
#

AC_INIT(TRIPS-config-RDFMatcher, 2009-01-09, wdebeaum@cs.rochester.edu)
AC_CONFIG_SRCDIR([defs.mk.in])
AC_CONFIG_AUX_DIR([../auto])

AC_CANONICAL_TARGET
AC_SUBST(TARGET, "$target")

ac_sfa_jar_search_list='/usr/local/share/sfa-2003-11-17.jar /u/wdebeaum/step/similarity-flooding/sfa-2003-11-17.jar'

AC_ARG_WITH(sfa-jar,
	    AC_HELP_STRING([--with-sfa-jar],
			   [locate similarity flooding algorithm jar file]))
AC_SUBST(RDFMATCHER_sfa_jar)

if test "$with_sfa_jar" = no ; then
    RDFMATCHER_sfa_jar=''
else
    AC_MSG_CHECKING([for sfa_jar])
    ac_pkg_found=no
    if test "$with_sfa_jar"; then
	ac_sfa_jar_search_list="$with_sfa_jar"
    fi
    for x in $ac_sfa_jar_search_list; do
	if test -e $x; then
	    AC_MSG_RESULT($x)
	    ac_pkg_found=yes
	    RDFMATCHER_sfa_jar="$x"
	fi
    done
    if test "$ac_pkg_found" = no; then
	if test -z "$with_sfa_jar"; then
	    AC_MSG_RESULT([not found (use --with-sfa-jar if this isn't ok)])
	    RDFMATCHER_sfa_jar=''
	else
	    AC_MSG_RESULT([not found (but assuming \"$with_sfa_jar\")])
	    RDFMATCHER_sfa_jar="$with_sfa_jar"
	fi
    fi
fi
AC_CONFIG_FILES([Makefile defs.mk])
AC_OUTPUT
