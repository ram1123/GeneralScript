echo "Enter the path of input files to list:"
read pth
for f in ${pth}*.root
	do
	echo "/opt/d-cache/dcap/bin/dccp $f /uscms_data/d3/rasharma/cpy/GluGluToHToWWToLAndTauNuQQ_M-500_8TeV-powheg-pythia6_dimatteo-SQWaT_PAT_53X_Summer12_v1/"
done
