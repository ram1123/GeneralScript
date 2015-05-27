#!/bin/tcsh

#       -------------------------------------------------------------------
#
#       Shell program to check the status of crab job and resubmit easily
#
#       Author: 2015, Ramkrishna Sharma,,, <ramkrishna.sharma71@gmail.com>.
#
#       The structure of the program is created by a script prodived on LinuxCommand.org
#
#       Usage:
#
#              CrabStatus.csh [option1] [option2] 
#
#       Options:
#		r	For resubmitting the jobs, but it needs two more parameters
#		s	For checking status
#		l	For checking status with --long option
#		v	For checking status with --verboseErrors option
#		e	To list the jobids which has errors; but peresently it lists
#			only those jobids that exits with error code 8001 or 8020
#
#       Revision History:
#
#       22/05/2015      File created by new_script ver. 2.1.0
#
#       -------------------------------------------------------------------
clear
echo "Ramkrishna $1"

set x = $1

if ( $x == r ) then
	if ( $2 == LL ) then
        crab resubmit crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LL_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/  --jobids $3 
	endif
	if ( $2 == LT ) then
        crab resubmit crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/  --jobids $3
	endif
	if ( $2 == TT ) then
        crab resubmit crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/  --jobids $3
	endif
	if ( $2 == TOT ) then
        crab resubmit crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TOT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --jobids $3
	endif
endif
if ( $x == v ) then
	if ( $2 == LL || $2 == "" ) then
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LL_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --verboseErrors 
	endif
	if ( $2 == LT || $2 == "" ) then
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --verboseErrors 
	endif
	if ( $2 == TT || $2 == "" ) then
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --verboseErrors 
	endif
	if ( $2 == TOT || $2 == "" ) then
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TOT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --verboseErrors 
	endif
endif
if ( $x == l ) then
	if ( $2 == LL || $2 == "" ) then
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LL_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --long 
	endif
	if ( $2 == LT || $2 == "" ) then
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --long 
	endif
	if ( $2 == TT || $2 == "" ) then
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --long 
	endif
	if ( $2 == TOT || $2 == "" ) then
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TOT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --long 
	endif
endif

if ( $x == s ) then
	if ( $2 == LL || $2 == "" ) then
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LL_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ 
	endif
	if ( $2 == LT || $2 == "" ) then
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ 
	endif
	if ( $2 == TT || $2 == "" ) then
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ 
	endif
	if ( $2 == TOT || $2 == "" ) then
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TOT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ 
	endif
endif

if ( $x == e ) then
	echo "LL with exit code 8020"
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LL_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --verboseErrors --long | grep 8020 | awk '{print $1}' | xargs | sed -e 's/ /,/g'
	echo "LL with exit code 8001"
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LL_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --verboseErrors --long | grep 8001 | awk '{print $1}' | xargs | sed -e 's/ /,/g'
	echo "LT with exit code 8020"
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --verboseErrors --long | grep 8020 | awk '{print $1}' | xargs | sed -e 's/ /,/g'
	echo "LT with exit code 8001"
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --verboseErrors --long | grep 8001 | awk '{print $1}' | xargs | sed -e 's/ /,/g'
	echo "TT with exit code 8020"
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --verboseErrors --long | grep 8020 | awk '{print $1}' | xargs | sed -e 's/ /,/g'
	echo "TT with exit code 8001"
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --verboseErrors --long | grep 8001 | awk '{print $1}' | xargs | sed -e 's/ /,/g'
	echo "TOT with exit code 8020"
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TOT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --verboseErrors --long | grep 8020 | awk '{print $1}' | xargs | sed -e 's/ /,/g'
	echo "TOT with exit code 8001"
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TOT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --verboseErrors --long | grep 8001 | awk '{print $1}' | xargs | sed -e 's/ /,/g'
        #crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LT_13TeV_MGv1_5_14_DECAYPkg/  --verboseErrors --long | grep failed | awk '{print $1}' | xargs | sed -e 's/ /,/g'
        #crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TT_13TeV_MGv1_5_14_DECAYPkg/  --verboseErrors --long | grep failed | awk '{print $1}' | xargs | sed -e 's/ /,/g'
        #crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TOT_13TeV_MGv1_5_14_DECAYPkg/  --verboseErrors --long | grep failed | awk '{print $1}' | xargs | sed -e 's/ /,/g'
endif 
