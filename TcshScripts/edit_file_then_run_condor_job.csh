#!/bin/tcsh                                                                                                                                              
# This script takes the list.dat file which contains the list of files on which we have to run the condor job
# WmunuJetsAnalysisPAT_cfg.py is the input which will we edited 
# ONly on one word in WmunuJetsAnalysisPAT_cfg.py will be edited which is WJetsToLNu then we have to run the condor job
# THen this script will automatically creates the job_*.csh and condor_*job then run the condor job

setenv pwd $PWD
echo ${pwd}
set lines=`cat list.dat`
set count=1
while ( $count  <= $#lines )
cd ${pwd}
echo $lines[$count]
perl -p -e 's/WJetsToLNu/'$lines[$count]'/g' WmunuJetsAnalysisPAT_cfg.py > WmunuJetsAnalysisPAT_$lines[$count]_cfg.py


cat>Job_$lines[$count].csh<<EOF
#!/bin/tcsh
source /uscmst1/prod/sw/cms/setup/cshrc prod
cd /uscms_data/d3/rasharma/exercise02/nTuples/CMSSW_5_3_2_patch4/src
cmsenv
cd /uscms_data/d3/rasharma/exercise02/nTuples/CMSSW_5_3_2_patch4/src/ElectroWeakAnalysis/VPlusJets/test/
cmsRun WmunuJetsAnalysisPAT_$lines[$count]_cfg.py
EOF
 
chmod 775 ${pwd}/Job_$lines[$count].csh
  
cat>condor_$lines[$count]<<EOF
universe = vanilla
Executable = Job_$lines[$count].csh
Requirements = Memory >= 199 &&OpSys == "LINUX"&& (Arch != "DUMMY" )&& Disk > 1000000
Should_Transfer_Files = YES
WhenToTransferOutput = ON_EXIT
transfer_input_files = /eos/uscms/store/user/rasharma/merged_patTuple_500_8T/$lines[$count].root, /uscms_data/d3/rasharma/exercise02/nTuples/CMSSW_5_3_2_patch4/src/ElectroWeakAnalysis/VPlusJets/test/WmunuJetsAnalysisPAT_$lines[$count]_cfg.py
Output               = $lines[$count]_\$(Cluster)_\$(Process).stdout
Error                = $lines[$count]_\$(Cluster)_\$(Process).stderr
Log                  = $lines[$count]_\$(Cluster)_\$(Process).log
notify_user = ramkrishna.sharma71@gmail.com
Queue 1
EOF
condor_submit condor_$lines[$count]


@ count = $count + 1
end < list.dat
