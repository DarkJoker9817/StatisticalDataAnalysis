setwd('C:/Users/vdevi/MyDesktop/unisa/magistrale/Primo anno/secondo semestre/statistical e data analysis/progetto/StatisticalDataAnalysis')
myds = read.csv('C:/Users/vdevi/MyDesktop/unisa/magistrale/Primo anno/secondo semestre/statistical e data analysis/progetto/StatisticalDataAnalysis/Datasets/RegressionData_SDA_AH_group3.csv')

# Scale the dataset by subtracting the column means and dividing by the column 
# standard deviation
myds = scale(myds)
myds = as.data.frame(myds)

library("caret")
preproc <- preProcess(myds, method=c("range"))

myds <- predict(preproc,myds)

summary(myds2)

# Separate the dataset in X (containing predictors) and Y (containing response)
X = myds[, 1:10]
Y = myds[, 11:18]

library(dplyr)
myds <- rename(myds, Temperature=X_Temperature, Humidity=X_Humidity, Altitude=X_Altitude,
               ClimaticConditions=X_ClimaticConditions, RestTimeFromLastMatch=X_RestTimeFromLastMatch,
               AvgPlayerValue=X_AvgPlayerValue, MatchRelevance=X_MatchRelevance, 
               AvgGoalConcededLastMatches=X_AvgGoalConcededLastMatches, SupportersImpact=X_SupportersImpact,
               OpposingSupportersImpact=X_OpposingSupportersImpact, Dehydration=Y_Dehydration, Hyperthermia=Y_Hyperthermia, 
               AvgSpeed=Y_AvgSpeed, AvgTravelledDistance=Y_AvgTravelledDistance, 
               PressingCapability=Y_PressingCapability, PhysicalEndurance=Y_PhysicalEndurance,
               MentalConcentration=Y_MentalConcentration, EmotionalMotivation=Y_EmotionalMotivation)

# Rename column names of X and Y datasets

X <- rename(X, Temperature=X_Temperature, Humidity=X_Humidity, Altitude=X_Altitude,
            ClimaticConditions=X_ClimaticConditions, RestTimeFromLastMatch=X_RestTimeFromLastMatch,
            AvgPlayerValue=X_AvgPlayerValue, MatchRelevance=X_MatchRelevance, 
            AvgGoalConcededLastMatches=X_AvgGoalConcededLastMatches, SupportersImpact=X_SupportersImpact,
            OpposingSupportersImpact=X_OpposingSupportersImpact)

Y <- rename(Y, Dehydration=Y_Dehydration, Hyperthermia=Y_Hyperthermia, 
            AvgSpeed=Y_AvgSpeed, AvgTravelledDistance=Y_AvgTravelledDistance, 
            PressingCapability=Y_PressingCapability, PhysicalEndurance=Y_PhysicalEndurance,
            MentalConcentration=Y_MentalConcentration, EmotionalMotivation=Y_EmotionalMotivation)

# Split the two datasets in train and test
splitpoint = 30
X_train = X[1:splitpoint,]
X_test = X[(splitpoint+1):40,]
Y_train = Y[1:splitpoint,]
Y_test = Y[(splitpoint+1):40,]

