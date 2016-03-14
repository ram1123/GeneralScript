set i=1
set red='\e[0;31m'
set blue='\e[0;34m'
set NC='\e[0m'
while ($i > 0) 
	echo "${blue} crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -status > status.log ${NC}"
	crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -status > status.log
	cat status.log | grep "Exit Code : 0"
	set var=`awk '/Jobs Done/ {f=1;next} f && /List of jobs:/ {print $4;exit}' status.log`
	cat status.log | grep "Jobs Submitted"
	cat status.log | grep "Jobs Running"
	cat status.log | grep "Jobs Done"
	if ( "$var" == "" ) then
		echo "${red} No Jobs completed yet..... come later.... ${NC}"
	else
		echo "${red}Jobs with Done status : $var${NC}"
		echo "${blue}crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -getoutput $var ${NC}"
		crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -getoutput $var
	set var=`awk '/Exit Code : 60307/ {f=1;next} f && /List of jobs:/ {print $4;exit}' status.log`
	if ( "$var" == "" ) then
		echo "${red}No jobs exits with exit code 60307${NC}"
	else
		echo "${red}Jobs with exit code 60307 : $var${NC}"
		echo "${blue}crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -resubmit $var ${NC}"
		crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -resubmit $var
	endif
	set var=`awk '/Exit Code : 60317/ {f=1;next} f && /List of jobs:/ {print $4;exit}' status.log`
	if ( "$var" == "" ) then
		echo "${red}No jobs exits with exit code 60317${NC}"
	else
		echo "${red}Jobs with exit code 60317 : $var${NC}"
		echo "${blue}crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -resubmit $var ${NC}"
		crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -resubmit $var
	endif
	set var=`awk '/Exit Code : 8028/ {f=1;next} f && /List of jobs:/ {print $4;exit}' status.log`
	if ( "$var" == "" ) then
		echo "${red}No jobs exits with exit code 8028${NC}"
	else
		echo "${red}Jobs with exit code 8028 : $var${NC}"
		echo "${blue}crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -resubmit $var ${NC}"
		crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -resubmit $var
	endif
	set var=`awk '/Exit Code : 8021/ {f=1;next} f && /List of jobs:/ {print $4;exit}' status.log`
	if ( "$var" == "" ) then
		echo "${red}No jobs exits with exit code 8021${NC}"
	else
		echo "${red}Jobs with exit code 8021 : $var${NC}"
		echo "${blue}crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -resubmit $var ${NC}"
		crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -resubmit $var
	endif
	set var=`awk '/Exit Code : 50664/ {f=1;next} f && /List of jobs:/ {print $4;exit}' status.log`
	if ( "$var" == "" ) then
		echo "${red}No jobs exits with exit code 50664${NC}"
	else
		echo "${red}Jobs with exit code 50664: $var${NC}"
		echo "${blue}crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -resubmit $var ${NC}"
		crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -resubmit $var
	endif
	set var=`awk '/Jobs Aborted/ {f=1;next} f && /List of jobs:/ {print $4;exit}' status.log`
	if ( "$var" == "" ) then
		echo "${red}No job Aborted${NC}"
	else
		cat status.log | grep "Jobs Aborted"
		echo "${red}Jobs Aborted: $var${NC}"
		echo "${blue}crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -kill $var ${NC}"
		crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -kill $var
		echo "${blue}crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -resubmit $var ${NC}"
		crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -resubmit $var
	endif
	set var=`awk '/Jobs Cancelled/ {f=1;next} f && /List of jobs Cancelled:/ {print $5;exit}' status.log`
	if ( "$var" == "" ) then
		echo "${red}No job Cancelled${NC}"
	else
		cat status.log | grep "Jobs Cancelled"
		echo "${red}Jobs Cancelled: $var${NC}"
		echo "${blue}crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -kill $var ${NC}"
		crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -kill $var
		echo "${blue}crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -resubmit $var ${NC}"
		crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -resubmit $var
	endif
	set var=`awk '/Jobs Cancelled/ {f=1;next} f && /List of jobs Cancelled by user:/ {print $7;exit}' status.log`
	if ( "$var" == "" ) then
		echo "${red}No job Cancelled${NC}"
	else
		cat status.log | grep "Jobs Cancelled"
		echo "${red}Jobs Cancelled: $var${NC}"
		echo "${blue}crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -kill $var ${NC}"
		crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -kill $var
		echo "${blue}crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -resubmit $var ${NC}"
		crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -resubmit $var
	endif
	crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -status > status.log
	set var=`awk '/Exit Code : 0/ {f=1;next} f && /List of jobs:/ {print $4;exit}' status.log`
	if ( "$var" == "1-2402" ) then
		exit
	else
		crab -c crabDirH/Mu/WJets_0p1_1p2_2p10_3p20_4p20_5p20_CT10_8TeV_14May/  -status > status.log
		echo "${red}Jobs with exit code 0 : $var${NC}"
		cat status.log | grep "Exit Code : 0"
		cat status.log | grep "Jobs Submitted"
		cat status.log | grep "Jobs Running"
		cat status.log | grep "Jobs Done"
	endif
	endif
	echo "${red}Jobs with exit code 0 : $var${NC}"
	cat status.log | grep "Exit Code : 0"
	cat status.log | grep "Jobs Submitted"
	cat status.log | grep "Jobs Running"
	cat status.log | grep "Jobs Done"
	date
	echo "${red}Run Number = $i${NC}"
	sleep 5m
	@ i++
end
