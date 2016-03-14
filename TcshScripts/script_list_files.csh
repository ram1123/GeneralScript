echo "Enter the path of input files to list:"
read pth
cd /pnfs/cms/WAX/11/
for f in ${pth}*.root
	do
	echo "/$f" 
done
cd -
