# STEP git mirror #

The TRIPS STEP system is the system we used for the [STEP Symposium 2008](http://project.cgm.unive.it/events/STEP2008/index.htm) [shared task](http://project.cgm.unive.it/events/STEP2008/link14.htm), parsing paragraphs.

This git repo is a mirror of the TRIPS `step` CVS module. It is updated nightly.

STEP can be installed easily but inefficiently using [Vagrant](https://www.vagrantup.com/) with `src/Systems/STEP/Vagrantfile`. Even if you don't plan to use Vagrant, reading that file may help you to install STEP.

Note that the `src/config/lisp/defsystem/defsystem-3.6i/` directory contains a modified, non-standard, non-official version of [MK:DEFSYSTEM](http://www.cliki.net/mk-defsystem) 3.6i. See the comments near the top of `defsystem.lisp` in that directory for its copyright notice and license.

The rest of the repository is licensed using the [GPL 2+](http://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html) (see `gpl-2.0.txt`):

TRIPS STEP system  
Copyright (C) 2016  Institute for Human & Machine Cognition

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
