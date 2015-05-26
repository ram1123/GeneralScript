#!/bin/tcsh                                                                                                                                                                         
## Here we have to give the input txt file which contains the list of .root file in edm format that we have to merge
## Then this script will merge all the root file and save the output at /eos/uscms/store/user/rasharma/merged_patTuple_500_8T/
## If you want to save it at some other place then change this in line no 14

setenv pwd $PWD
echo "Name of Input file to run without .txt"
set file=$<

cat>Job_$file.csh<<EOF
#!/bin/tcsh
cd ${pwd}
source /uscmst1/prod/sw/cms/setup/cshrc prod
cmsenv
edmCopyPickMerge inputFiles_load=${file}.txt outputFile=/eos/uscms/store/user/rasharma/merged_patTuple_500_8T/Merged_${file}.root maxSize=80000000
EOF
 
chmod 775 ${pwd}/Job_${file}.csh
  
cat>condor_${file}<<EOF
universe = vanilla
Executable = Job_${file}.csh
Requirements = Memory >= 199 &&OpSys == "LINUX"&& (Arch != "DUMMY" )&& Disk > 1000000
Should_Transfer_Files = YES
WhenToTransferOutput = ON_EXIT
Output               = ${file}_\$(Cluster)_\$(Process).stdout
Error                = ${file}_\$(Cluster)_\$(Process).stderr
Log                  = ${file}_\$(Cluster)_\$(Process).log
notify_user = ramkrishna.sharma71@gmail.com
Queue 1
EOF
condor_submit condor_$file
