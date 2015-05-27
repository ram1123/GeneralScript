from CRABClient.UserUtilities import config
config = config()

config.General.requestName = 'GEN-SIM_Production_qqToWWqqTolnu4q_LL_13TeV_MGv1_5_14_cteq6l1_DECAYPkg'
config.General.workArea = 'crab_projects'

config.JobType.pluginName = 'PrivateMC'
config.JobType.generator = 'lhe'
config.JobType.psetName = 'qqToqqWWTolnu4q-RunIIWinter15GS_LL_cfg.py'
config.JobType.inputFiles = [
	'/afs/cern.ch/user/r/rasharma/work/public/WWScattering/lhefiles/MergedLHE/dec-events_LL.lhe'
        ]

config.Data.primaryDataset = 'qqToqqWW_LL_MGv1_cteq6l1_DECAYPkg'
config.Data.splitting = 'EventBased'
config.Data.unitsPerJob = 1000
NJOBS = 100
config.Data.totalUnits = config.Data.unitsPerJob * NJOBS
config.Data.outLFNDirBase = '/store/user/rasharma/WWScattering/Full_Simulation_Data/GEN-SIM/' # or '/store/group/<subdir>'
config.Data.publication = True
config.Data.publishDataName = 'GEN-SIM_qqToqqWW_LL_MGv1_cteq6l1_DECAYPkg'


config.Site.storageSite = 'T3_US_FNALLPC'
