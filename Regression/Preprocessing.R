setwd('C:/Users/vdevi/MyDesktop/unisa/magistrale/Primo anno/secondo semestre/statistical e data analysis/progetto/StatisticalDataAnalysis')
myds = read.csv('C:/Users/vdevi/MyDesktop/unisa/magistrale/Primo anno/secondo semestre/statistical e data analysis/progetto/StatisticalDataAnalysis/Datasets/RegressionData_SDA_AH_group3.csv')

library(dplyr)
myds <- rename(myds, Temperature=X_Temperature, Humidity=X_Humidity, Altitude=X_Altitude,
               ClimaticConditions=X_ClimaticConditions, RestTimeFromLastMatch=X_RestTimeFromLastMatch,
               AvgPlayerValue=X_AvgPlayerValue, MatchRelevance=X_MatchRelevance, 
               AvgGoalConcededLastMatches=X_AvgGoalConcededLastMatches, SupportersImpact=X_SupportersImpact,
               OpposingSupportersImpact=X_OpposingSupportersImpact, Dehydration=Y_Dehydration, Hyperthermia=Y_Hyperthermia, 
               AvgSpeed=Y_AvgSpeed, AvgTravelledDistance=Y_AvgTravelledDistance, 
               PressingCapability=Y_PressingCapability, PhysicalEndurance=Y_PhysicalEndurance,
               MentalConcentration=Y_MentalConcentration, EmotionalMotivation=Y_EmotionalMotivation)

# Separate the dataset in X (containing predictors) and Y (containing response)
X = myds[, 1:10]
Y = myds[, 11:18]
# Separate the dataset in train (containing the training samples) and test (containing the testing variables)
splitpoint=30
train = myds[1:splitpoint,]
test = myds[(splitpoint+1):40, ]

# Split the two X and Y datasets in X_train (X_test) and Y_train (Y_test)
X_train = X[1:splitpoint,]
X_test = X[(splitpoint+1):40,]
Y_train = Y[1:splitpoint,]
Y_test = Y[(splitpoint+1):40,]

