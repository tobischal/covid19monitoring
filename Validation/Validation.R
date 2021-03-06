# Validation.R
    
###########################################################################
    
# working direcotory 

getwd()
#setwd("C:/gitrepos/covid19monitoring/Validation")
#setwd("/home/klk/Documents/gitrepos/covid19monitoring/Validation")
    
###########################################################################
    
# import function
    
source("./function.R")
    
###########################################################################
    
# import libraries
    
library(readr) # Version: ‘1.3.1’
library(ggplot2) # Version: ‘3.1.0’
library(rmarkdown)
    
###########################################################################
    
# format numbers
  
options(scipen = 1000000)
options(digits = 6)
    
###########################################################################
    
# import data
    
Other_Weather <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_other_Weather/master/Other_Weather.csv")
Mobility_VBZHardbruecke <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_mobility_VBZHardbruecke/master/Mobility_VBZHardbruecke.csv")
Mobility_Intervista <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_mobility_intervista/master/Mobility_Intervista.csv")
Economy_SMI <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_economy_SMI/master/Economy_SMI.csv")
Economy_FlightTrafficZRH <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_economy_FlightTraffic/master/Economy_FlightTraffic.csv")
Economy_SIX <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_economy_SIX/master/Economy_SIX.csv")
Education_Mindmaps <- ImportUrl("https://raw.githubusercontent.com/bildungsmonitoringZH/covid19_edu_mindsteps/master/Bildung_LernplattformMindsteps.csv")
Education_LMVZ <- ImportUrl("https://raw.githubusercontent.com/bildungsmonitoringZH/covid19_edu_lmvzmath/master/Bildung_TrainingMathematik.csv?token=AO5R67U7ZT3JCUGXR2C6WYC6WONBE")
Health_Covid19Cases <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_health_covid19cases/master/Health_covid19cases.csv?token=AJX6OIIM25TY22U7N4OKQHS6R3KX6")
Economy_KOF <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_economy_KOF/master/Economy_KOF.csv")
Mobility_SBBHauptbahnhof <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_mobility_SBBHauptbahnhof/master/Mobility_SBBHauptbahnhof.csv")
Mobility_ZaehlstellenMIVLVVelo<- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_mobility_ZaehlstellenMIVLVVelo/master/Mobilit%C3%A4t_AufkommenTerrestrischerVerkehr.csv")
Social_SWISSIX <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_social_SWISSIX/master/Social_SWISSIX.csv")
Education_KITA <- ImportUrl("https://raw.githubusercontent.com/bildungsmonitoringZH/covid19_edu_ajb/master/Bildung_Kita.csv?token=AO5R67QPGQ6SNWMC67X4XU26UFNXM")
Economy_AWA <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_economy_AWA/master/Economy_AWA.csv")
Mobility_VerkehrsmessstellenKantonZH <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_mobility_VerkehrsmessstellenKantonZH/master/Mobility_VerkehrsmessstellenKantonZH.csv")
Bildung_Lehrvertraege <- ImportUrl("https://raw.githubusercontent.com/bildungsmonitoringZH/covid19_edu_bista/master/Bildung_Lehrvertraege.csv")
Economy_Kreditkarten <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_economy_Kreditkarten/master/Economy_Kreditkarten.csv")
Social_SwissgridEnergie <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_social_EnergieSwissgrid/master/Social_SwissgridEnergie.csv?token=AJX6OINORKKK5GAIH5NTR4C6VFSO2")
Bildung_IliasNutzung <- ImportUrl("https://raw.githubusercontent.com/bildungsmonitoringZH/covid19_edu_phzh/master/Bildung_IliasNutzung.csv")
#mydf <- ImportUrl("")

# View(Education_Mindmaps[order(Education_Mindmaps$date, decreasing = TRUE),]); View(Education_LMVZ[order(Education_LMVZ$date, decreasing = TRUE),]); View(Education_KITA[order(Education_KITA$date, decreasing = TRUE),]); View(Social_SWISSIX[order(Social_SWISSIX$date, decreasing = TRUE),]); View(Mobility_SBBHauptbahnhof[order(Mobility_SBBHauptbahnhof$date, decreasing = TRUE),])
    
###########################################################################
    
# check if variable names follow the standard
  
CheckIfDfFollowsStandard1(Other_Weather)
CheckIfDfFollowsStandard1(Mobility_VBZHardbruecke)
CheckIfDfFollowsStandard1(Mobility_Intervista)
CheckIfDfFollowsStandard1(Economy_SMI)
CheckIfDfFollowsStandard1(Economy_FlightTrafficZRH)
CheckIfDfFollowsStandard1(Economy_SIX)
CheckIfDfFollowsStandard1(Education_Mindmaps)
CheckIfDfFollowsStandard1(Education_LMVZ)
CheckIfDfFollowsStandard1(Health_Covid19Cases)
CheckIfDfFollowsStandard1(Mobility_SBBHauptbahnhof)
CheckIfDfFollowsStandard1(Mobility_ZaehlstellenMIVLVVelo)
CheckIfDfFollowsStandard1(Social_SWISSIX)
CheckIfDfFollowsStandard1(Education_KITA)
CheckIfDfFollowsStandard1(Economy_AWA)
CheckIfDfFollowsStandard1(Mobility_VerkehrsmessstellenKantonZH)
CheckIfDfFollowsStandard1(Bildung_Lehrvertraege)
CheckIfDfFollowsStandard1(Economy_Kreditkarten)
CheckIfDfFollowsStandard1(Social_SwissgridEnergie)
CheckIfDfFollowsStandard1(Bildung_IliasNutzung)
#CheckIfDfFollowsStandard1()

###########################################################################
  
# rbind
    
covid19monitoring <- rbind(Other_Weather, 
     Mobility_VBZHardbruecke, 
     Mobility_Intervista, 
     Economy_SMI, 
     Economy_FlightTrafficZRH, 
     Economy_SIX, 
     Education_Mindmaps, 
     Education_LMVZ, 
     Health_Covid19Cases, 
     Economy_KOF, 
     Mobility_SBBHauptbahnhof, 
     Mobility_ZaehlstellenMIVLVVelo,
     Social_SWISSIX,
     Education_KITA,
     Economy_AWA,
     Mobility_VerkehrsmessstellenKantonZH,
     Bildung_Lehrvertraege,
     Economy_Kreditkarten,
     Social_SwissgridEnergie,
     Bildung_IliasNutzung
     )
    
###########################################################################
  
# Export
    
write.table(covid19monitoring, "./ValidationData.csv", sep=",", fileEncoding="UTF-8", row.names = F)

# Export Metadata
covid19monitoring_sel <- covid19monitoring[, ! names(covid19monitoring) %in% c("date", "value")]
unique_rows <- !duplicated(covid19monitoring_sel[names(covid19monitoring_sel)])
Metadata <- covid19monitoring_sel[unique_rows,]
Metadata$last_modified <- Sys.Date()
Metadata$topic<-as.factor(Metadata$topic)
Metadata$topic<-factor(Metadata$topic, levels=c("Mobilität", "Wirtschaft", "Soziales", "Gesundheit", "Bildung", "Sonstiges"))
Metadata<-Metadata[order(as.numeric(Metadata$topic), Metadata$variable_long),]
#Numberof items in topic
numit<-data.frame(table(as.numeric(Metadata$topic)))
sortind<-list()  
#create numeric 
for(i in as.numeric(numit$Var1)) sortind[[i]]<-paste(numit$Var1[i], formatC(1:numit$Freq[i], width=3, format="d", flag="0"), sep=".")
Metadata$sort<-as.numeric(unlist(sortind))
write.table(Metadata, "./ValidationMetadata.csv", sep=",", fileEncoding="UTF-8", row.names = F)

###########################################################################
    
# render Validation.Rmd
    
render("./Validation.Rmd")
    

    
