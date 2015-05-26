#!/bin/tcsh
cd /uscms/home/rasharma/nobackup/exercise02/nTuples/CMSSW_5_3_2_patch4/src/ElectroWeakAnalysis/VPlusJets/test/merged_patTuple
source /uscmst1/prod/sw/cms/setup/cshrc prod
cmsenv
edmCopyPickMerge inputFiles_load=TTJets.txt outputFile=/eos/uscms/store/user/rasharma/merged_patTuple_500_8T/TTJets.root maxSize=80000000
