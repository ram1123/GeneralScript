#!/bin/bash

#	-------------------------------------------------------------------
#
#	Shell program to Install the basic software in Ubuntu automatically..
#
#	Copyright 2015, Ramkrishna Sharma,,, <ramkrishna.sharma71@gmail.com>.
#	Author: 2015, Ramkrishna Sharma,,, <ramkrishna.sharma71@gmail.com>.
#
#	NOTE: You must be the superuser to run this script.
#
#	Usage:
#
#		Install_Software.sh [ -h | --help ]
#
#	Options:
#
#		-h, --help	Display this help message and exit.
#
#
#	Revision History:
#
#	08/10/2015	File created by new_script ver. 2.1.0 
#			From the http://www.linuxcommand.org
#
#	-------------------------------------------------------------------


#	-------------------------------------------------------------------
#	Constants
#	-------------------------------------------------------------------

	PROGNAME=$(basename $0)
	VERSION="0.0.1"



#	-------------------------------------------------------------------
#	Functions
#	-------------------------------------------------------------------


function clean_up
{

#	-----------------------------------------------------------------------
#	Function to remove temporary files and other housekeeping
#		No arguments
#	-----------------------------------------------------------------------

	rm -f ${TEMP_FILE1}
}


function error_exit
{

#	-----------------------------------------------------------------------
#	Function for exit due to fatal program error
#		Accepts 1 argument:
#			string containing descriptive error message
#	-----------------------------------------------------------------------


	echo "${PROGNAME}: ${1:-"Unknown Error"}" >&2
	clean_up
	exit 1
}


function graceful_exit
{

#	-----------------------------------------------------------------------
#	Function called for a graceful exit
#		No arguments
#	-----------------------------------------------------------------------

	clean_up
	exit
}


function signal_exit
{

#	-----------------------------------------------------------------------
#	Function to handle termination signals
#		Accepts 1 argument:
#			signal_spec
#	-----------------------------------------------------------------------

	case $1 in
		INT)	echo "$PROGNAME: Program aborted by user" >&2
			clean_up
			exit
			;;
		TERM)	echo "$PROGNAME: Program terminated" >&2
			clean_up
			exit
			;;
		*)	error_exit "$PROGNAME: Terminating on unknown signal"
			;;
	esac
}


function make_temp_files
{

#	-----------------------------------------------------------------------
#	Function to create temporary files
#		No arguments
#	-----------------------------------------------------------------------

	# Use user's local tmp directory if it exists

	if [ -d ~/tmp ]; then
		TEMP_DIR=~/tmp
	else
		TEMP_DIR=/tmp
	fi

	# Temp file for this script, using paranoid method of creation to
	# insure that file name is not predictable.  This is for security to
	# avoid "tmp race" attacks.  If more files are needed, create using
	# the same form.

	TEMP_FILE1=$(mktemp -q "${TEMP_DIR}/${PROGNAME}.$$.XXXXXX")
	if [ "$TEMP_FILE1" = "" ]; then
		error_exit "cannot create temp file!"
	fi
}


function usage
{

#	-----------------------------------------------------------------------
#	Function to display usage message (does not exit)
#		No arguments
#	-----------------------------------------------------------------------

	echo "Usage: ${PROGNAME} [-h | --help]"
}


function helptext
{

#	-----------------------------------------------------------------------
#	Function to display help message for program
#		No arguments
#	-----------------------------------------------------------------------

	local tab=$(echo -en "\t\t")

	cat <<- -EOF-

	${PROGNAME} ver. ${VERSION}
	This is a program to Install the basic software in Ubuntu automatically..

	$(usage)

	Options:

	-h, --help	Display this help message and exit.


	NOTE: You must be the superuser to run this script.
	
-EOF-
}


function root_check
{
	#####
	#	Function to check if user is root
	#	No arguments
	#####

	if [ "$(id | sed 's/uid=\([0-9]*\).*/\1/')" != "0" ]; then
		error_exit "You must be the superuser to run this script."
	fi
}

function comment_bar_long
{
        #####   
        #       Function to output a long comment bar
        #       No arguments
        #####

        echo "# -------------------------------------------------------------------"
}




#	-------------------------------------------------------------------
#	Program starts here
#	-------------------------------------------------------------------

##### Initialization And Setup #####

# Set file creation mask so that all files are created with 600 permissions.

umask 066
root_check

# Trap TERM, HUP, and INT signals and properly exit

trap "signal_exit TERM" TERM HUP
trap "signal_exit INT"  INT

# Create temporary file(s)

make_temp_files


##### Command Line Processing #####

if [ "$1" = "--help" ]; then
	helptext
	graceful_exit
fi

while getopts ":h" opt; do
	case $opt in

		h )	helptext
			graceful_exit ;;
		* )	usage
			clean_up
			exit 1
	esac
done


##### Main Logic #####
apt-get update          # To get the latest package list
apt-get install -f      # To get broken packages

for software in vim  git dpkg-dev make g++ gcc gnuplot binutils libx11-dev libxpm-dev libxft-dev libxext-dev gfortran libssl-dev libpcre3-dev xlibmesa-glu-dev libglew1.5-dev libftgl-dev glew-utils libmysqlclient-dev libfftw3-dev cfitsio-dev graphviz-dev libavahi-compat-libdnssd-dev libldap2-dev python-dev libxml2-dev libkrb5-dev libgsl0-dev libqt4-dev
do
        comment_bar_long
        echo "apt-get install ${software}"
        apt-get install $software -y 
        if [ $? -ne 0 ]
        then
                echo "ERROR($?):Failed to install $software"
                echo "Exiting installation..."
                break
        fi 
done


graceful_exit

