#!/bin/tcsh                                                                                                                                              
setenv pwd $PWD
echo ${pwd}
set lines=`cat 1list.dat`
set LINE=`cat 2list.dat`
set count=1
while ( $count  <= $#lines )
cd ${pwd}
echo $lines[$count]
echo $LINE[$count]
perl -pe "s/GluGluToHToWW_WmunuJetAnalysisntuple/"$lines[$count]"/g" kanamuon.C > KanaMuon_$lines[$count].C

perl -pi -we 's/Glu_RD_mu_HWWMH500_CMSSW532_private/'$LINE[$count]'/g;' KanaMuon_$lines[$count].C

perl -pi -we 's/kanamuon/KanaMuon_'$lines[$count]'/g;' KanaMuon_$lines[$count].C

perl -pe "s/kanamuon/KanaMuon_"$lines[$count]"/g" kanamuon.h > KanaMuon_$lines[$count].h

perl -p -w -e "s/kanamuon/KanaMuon_"$lines[$count]"/g" MyRunMuon.C > MyRunMuon_$lines[$count].C

perl -pi -we 's/MyRunMuon/MyRunMuon_'$lines[$count]'/g;' MyRunMuon_$lines[$count].C

@ count = $count + 1
end < 1list.dat


#set lines=`cat 1list.dat`
#set LE=`cat 2list.dat`
#set count=1
#while ( $count  <= $#lines )
#cd ${pwd}
#perl -p -e 's/Glu_RD_mu_HWWMH500_CMSSW532_private/'$NE[$count]'/g' KanaMuon_$lines[$count].C > KanaMuon_$lines[$count].C
