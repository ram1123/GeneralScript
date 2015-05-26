#!/bin/tcsh

cat>l1.sh<<EOF
echo "hadd /eos/uscms/store/user/rasharma/MergednTuples_8TeV_Moriond13_v2_21FEB2014/el_SingleEle2012A_13july.root" 
cd /pnfs/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle2012A_13july
ls | gawk 'BEGIN{ORS=" "}{print "dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle2012A_13july/"\$1}'
cd -
EOF

cat>l2.sh<<EOF
echo "hadd /eos/uscms/store/user/rasharma/MergednTuples_8TeV_Moriond13_v2_21FEB2014/el_SingleEle2012A_6aug.root" 
cd /pnfs/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle2012A_6aug
ls | gawk 'BEGIN{ORS=" "}{print "dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle2012A_6aug/"\$1}'
cd -
EOF

cat>l3.sh<<EOF
echo "hadd /eos/uscms/store/user/rasharma/MergednTuples_8TeV_Moriond13_v2_21FEB2014/el_SingleEle212B_13j_pt1.root" 
cd /pnfs/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212B_13j_pt1
ls | gawk 'BEGIN{ORS=" "}{print "dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212B_13j_pt1/"\$1}'
cd -
EOF

cat>l4.sh<<EOF
echo "hadd /eos/uscms/store/user/rasharma/MergednTuples_8TeV_Moriond13_v2_21FEB2014/el_SingleEle212B_13j_pt2.root" 
cd /pnfs/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212B_13j_pt2
ls | gawk 'BEGIN{ORS=" "}{print "dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212B_13j_pt2/"\$1}'
cd -
EOF

cat>l5.sh<<EOF
echo "hadd /eos/uscms/store/user/rasharma/MergednTuples_8TeV_Moriond13_v2_21FEB2014/el_SingleEle212Cv1_24aug.root" 
cd /pnfs/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212Cv1_24aug
ls | gawk 'BEGIN{ORS=" "}{print "dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212Cv1_24aug/"\$1}'
cd -
EOF

cat>l6.sh<<EOF
echo "hadd /eos/uscms/store/user/rasharma/MergednTuples_8TeV_Moriond13_v2_21FEB2014/el_SingleEle212Cv2_pt1.root" 
cd /pnfs/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212Cv2_pt1
ls | gawk 'BEGIN{ORS=" "}{print "dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212Cv2_pt1/"\$1}'
cd -
EOF

cat>l7.sh<<EOF
echo "hadd /eos/uscms/store/user/rasharma/MergednTuples_8TeV_Moriond13_v2_21FEB2014/el_SingleEle212Cv2_pt2.root" 
cd /pnfs/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212Cv2_pt2
ls | gawk 'BEGIN{ORS=" "}{print "dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212Cv2_pt2/"\$1}'
cd -
EOF

cat>l8.sh<<EOF
echo "hadd /eos/uscms/store/user/rasharma/MergednTuples_8TeV_Moriond13_v2_21FEB2014/el_SingleEle212Cv2_pt3.root" 
cd /pnfs/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212Cv2_pt3
ls | gawk 'BEGIN{ORS=" "}{print "dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212Cv2_pt3/"\$1}'
cd -
EOF

cat>l9.sh<<EOF
echo "hadd /eos/uscms/store/user/rasharma/MergednTuples_8TeV_Moriond13_v2_21FEB2014/el_SingleEle212D_pt1.root" 
cd /pnfs/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212D_pt1
ls | gawk 'BEGIN{ORS=" "}{print "dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212D_pt1/"\$1}'
cd -
EOF

cat>l10.sh<<EOF
echo "hadd /eos/uscms/store/user/rasharma/MergednTuples_8TeV_Moriond13_v2_21FEB2014/el_SingleEle212D_pt2.root" 
cd /pnfs/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212D_pt2
ls | gawk 'BEGIN{ORS=" "}{print "dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212D_pt2/"\$1}'
cd -
EOF

cat>l11.sh<<EOF
echo "hadd /eos/uscms/store/user/rasharma/MergednTuples_8TeV_Moriond13_v2_21FEB2014/el_SingleEle212D_pt3.root" 
cd /pnfs/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212D_pt3
ls | gawk 'BEGIN{ORS=" "}{print "dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212D_pt3/"\$1}'
cd -
EOF

cat>l12.sh<<EOF
echo "hadd /eos/uscms/store/user/rasharma/MergednTuples_8TeV_Moriond13_v2_21FEB2014/el_SingleEle212D_pt4.root" 
cd /pnfs/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212D_pt4
ls | gawk 'BEGIN{ORS=" "}{print "dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212D_pt4/"\$1}'
cd -
EOF

cat>l13.sh<<EOF
echo "hadd /eos/uscms/store/user/rasharma/MergednTuples_8TeV_Moriond13_v2_21FEB2014/el_SingleEle212D_pt5.root" 
cd /pnfs/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212D_pt5
ls | gawk 'BEGIN{ORS=" "}{print "dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212D_pt5/"\$1}'
cd -
EOF

cat>l14.sh<<EOF
echo "hadd /eos/uscms/store/user/rasharma/MergednTuples_8TeV_Moriond13_v2_21FEB2014/el_SingleEle212D_pt6.root" 
cd /pnfs/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212D_pt6
ls | gawk 'BEGIN{ORS=" "}{print "dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212D_pt6/"\$1}'
cd -
EOF

cat>l15.sh<<EOF
echo "hadd /eos/uscms/store/user/rasharma/MergednTuples_8TeV_Moriond13_v2_21FEB2014/el_SingleEle212D_pt7.root" 
cd /pnfs/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212D_pt7
ls | gawk 'BEGIN{ORS=" "}{print "dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212D_pt7/"\$1}'
cd -
EOF

cat>l16.sh<<EOF
echo "hadd /eos/uscms/store/user/rasharma/MergednTuples_8TeV_Moriond13_v2_21FEB2014/el_SingleEle212D_pt8.root" 
cd /pnfs/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212D_pt8
ls | gawk 'BEGIN{ORS=" "}{print "dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/11/store/user/rasharma/ramkrishna/17_02_14/nTuples_8TeV_Moriond13_v2/el_SingleEle212D_pt8/"\$1}'
cd -
EOF

chmod 777 l*.sh

./l1.sh > c1.sh
./l2.sh > c2.sh
./l3.sh > c3.sh
./l4.sh > c4.sh
./l5.sh > c5.sh
./l6.sh > c6.sh
./l7.sh > c7.sh
./l8.sh > c8.sh
./l9.sh > c9.sh
./l10.sh > c10.sh
./l11.sh > c11.sh
./l12.sh > c12.sh
./l13.sh > c13.sh
./l14.sh > c14.sh
./l15.sh > c15.sh
./l16.sh > c16.sh
