#
# iwidgets.tcl
# ----------------------------------------------------------------------
# Invoked automatically by [incr Tk] upon startup to initialize
# the [incr Widgets] package.
# ----------------------------------------------------------------------
#  AUTHOR: Mark L. Ulferts               EMAIL: mulferts@spd.dsccc.com
#
#  @(#) $Id: iwidgets.tcl.in,v 1.8 2017/07/07 19:06:40 dgp Exp $
# ----------------------------------------------------------------------
#                Copyright (c) 1995  Mark L. Ulferts
# ======================================================================
# See the file "license.terms" for information on usage and
# redistribution of this file, and for a DISCLAIMER OF ALL WARRANTIES.

package require Tcl 8.0
package require Tk 8.0
package require Itcl 4.1.2
if {[string length [package provide Itk]] == 0} {
    package forget Itk
    package forget itk
}
package require Itk [string index 4.1.2 0]

namespace eval ::iwidgets {
    namespace export *

    variable library [file dirname [info script]]
    variable version 4.1.1

    lappend auto_path $iwidgets::library
    variable subdir
    foreach subdir {generic scripts} {
	if {[file isdirectory [file join $iwidgets::library $subdir]]} {
	    lappend auto_path [file join $iwidgets::library $subdir]
	}
    }
    unset subdir
}

package provide Iwidgets $iwidgets::version
