cd $PWD
for f in MyRun*.C
	do
	echo "root -b -q -l $f\(20122500,0,0\)" 
done
cd -
