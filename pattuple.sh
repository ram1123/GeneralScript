kserver_init
setenv SCRAM_ARCH slc5_amd64_gcc462
cmsrel CMSSW_5_3_2_patch4
cd CMSSW_5_3_2_patch4/src
cmsenv
cvs co -r V06-02-04    TopQuarkAnalysis/Configuration
cvs co -r V06-05-01    DataFormats/PatCandidates
cvs co -r V08-09-21    PhysicsTools/PatAlgos
cvs co -r V00-03-15    CommonTools/ParticleFlow
cvs co -r V00-00-12    CommonTools/RecoUtils
cvs co -r V04-06-09    JetMETCorrections/Type1MET
cvs co -r V03-09-23    PhysicsTools/PatUtils
cvs co -r V01-08-00    RecoBTag/SecondaryVertex                         
cvs co -r V15-01-11    RecoParticleFlow/PFProducer                      
cvs co -r V02-02-00    RecoVertex/AdaptiveVertexFinder  
cvs co -r V00-02-05    -d CMGTools/External UserCode/CMG/CMGTools/External
cvs co -r CMSSW_5_3_2_patch4 RecoMET/METAlgorithms                            
cvs co -r CMSSW_5_3_2_patch4 RecoMET/METProducers  
cvs up -r ph_52X_MVAMet RecoMET/METAlgorithms/interface/PFMETAlgorithmMVA.h
cvs up -r ph_52X_MVAMet RecoMET/METAlgorithms/interface/mvaMEtUtilities.h
cvs up -r ph_52X_MVAMet RecoMET/METAlgorithms/src/PFMETAlgorithmMVA.cc
cvs up -r ph_52X_MVAMet RecoMET/METAlgorithms/src/mvaMEtUtilities.cc
cvs up -r ph_52X_MVAMet RecoMET/METAlgorithms/BuildFile.xml
cvs up -r ph_52X_MVAMet RecoMET/METProducers/interface/PFMETProducerMVA.h
cvs up -r ph_52X_MVAMet RecoMET/METProducers/src/PFMETProducerMVA.cc
cvs up -r ph_52X_MVAMet RecoMET/METProducers/python/mvaPFMET_cff.py
cvs up -r ph_52X_MVAMet RecoMET/METProducers/BuildFile.xml
cp /afs/cern.ch/user/p/pharris/public/SealModule.cc RecoMET/METProducers/src/
cvs co -r V00-04-01 CondFormats/EgammaObjects   
cvs co -r V00-02      -d  pharris/MVAMet UserCode/pharris/MVAMet
cvs co -d SQWaT UserCode/SQWaT
cvs co -d PhysicsTools/NtupleUtils UserCode/Bicocca/PhysicsTools/NtupleUtils
cvs co -r V00-00-21 -d EGamma/EGammaAnalysisTools UserCode/EGamma/EGammaAnalysisTools
cvs up -r 1.13 EGamma/EGammaAnalysisTools/interface/PFIsolationEstimator.h
cvs up -r 1.20 EGamma/EGammaAnalysisTools/src/PFIsolationEstimator.cc
cd EGamma/EGammaAnalysisTools/data
cat download.url | xargs wget
cd -
cmsenv
scram b -j 9
