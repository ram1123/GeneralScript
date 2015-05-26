clear
clear
echo "Ramkrishna $1"

set x = $1

if ( $x == v ) then
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LL_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --verboseErrors 
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --verboseErrors 
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --verboseErrors 
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TOT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --verboseErrors 
endif
if ( $x == l ) then
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LL_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --long 
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --long 
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --long 
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TOT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ --long 
endif

if ( $x == s ) then
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LL_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ 
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_LT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ 
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ 
        crab status crab_projects/crab_GEN-SIM_Production_qqToWWqqTolnu4q_TOT_13TeV_MGv1_5_14_cteq6l1_DECAYPkg/ 
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
