#!/bin/tcsh                                                                                                                                              
setenv pwd $PWD
echo ${pwd}
set lines=`cat 1list.dat`
set LINE=`cat 2list.dat`
set nam=`cat 3list.dat`
set count=1
while ( $count  <= $#lines )
cd ${pwd}
echo $lines[$count]
echo $LINE[$count]
perl -pe "s/GluGluToHToWW_WmunuJetAnalysisntuple/"$lines[$count]"/g" kanamuon.C > KanaMuon_$lines[$count].C
perl -pi -we 's/Glu_RD_mu_HWWMH500_CMSSW532_private/'$LINE[$count]'/g;' KanaMuon_$lines[$count].C
perl -pi -we 's/kanamuon/KanaMuon_'$lines[$count]'/g;' KanaMuon_$lines[$count].C
perl -pi -e 's/_channel/-channel/ if $. == 717' KanaMuon_$lines[$count].C
perl -pi -e 's/_channel/-channel/ if $. == 719' KanaMuon_$lines[$count].C

perl -pe "s/kanamuon/KanaMuon_"$lines[$count]"/g" kanamuon.h > KanaMuon_$lines[$count].h

perl -p -w -e "s/kanamuon/KanaMuon_"$lines[$count]"/g" MyRunMuon.C > MyRunMuon_$lines[$count].C
perl -pi -we 's/MyRunMuon/MyRunMuon_'$lines[$count]'/g;' MyRunMuon_$lines[$count].C


perl -pe "s/Output_GluGluToHToWWToLAndTauNuQQ_M-500_8TeV_WenuJetAnalysisntuple/"$nam[$count]"/g" kanaelec.C > KanaElec_$nam[$count].C
perl -pi -we 's/RD_el_HWWMH500_CMSSW532_private/'$LINE[$count]'/g;' KanaElec_$nam[$count].C
perl -pi -we 's/kanaelec/KanaElec_'$nam[$count]'/g;' KanaElec_$nam[$count].C
perl -pi -e 's/_channel/-channel/ if $. == 737' KanaElec_$nam[$count].C
perl -pi -e 's/_channel/-channel/ if $. == 739' KanaElec_$nam[$count].C

perl -pe "s/kanaelec/KanaElec_"$nam[$count]"/g" kanaelec.h > KanaElec_$nam[$count].h

perl -p -w -e "s/kanaelec/KanaElec_"$nam[$count]"/g" MyRunElec.C > MyRunElec_$nam[$count].C
perl -pi -we 's/MyRunElec/MyRunElec_'$nam[$count]'/g;' MyRunElec_$nam[$count].C

@ count = $count + 1
end < 1list.dat
