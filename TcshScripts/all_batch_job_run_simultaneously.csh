#!/bin/tcsh                                                                                                                                              
setenv pwd $PWD
echo ${pwd}
set lines=`cat listt.dat`
set count=1
while ( $count  <= $#lines )
cd ${pwd}
echo $lines[$count]
perl -p -e 's/WJetsToLNu/'$lines[$count]'/g' WmunuJetsAnalysisPAT_cfg.py > WmunuJetsAnalysisPAT_$lines[$count]_cfg.py

@ count = $count + 1
end < list.dat
