setwd("/Users/ugobarbato/Desktop/Università/Statistical\ Data\ Analysis/Project/")
getwd()
mydataset = read.csv("RegressionData_SDA_AH_group3.csv")
mydataset = as.matrix(mydataset)
mydataset = scale(mydataset)
mydataset = as.data.frame(mydataset)
X = mydataset[, 1:10]
Y = mydataset[, 11:18]


# Rename column names of X and Y datasets
library(dplyr)
X <- rename(X, Temperature=X_Temperature, Humidity=X_Humidity, Altitude=X_Altitude,
       ClimaticConditions=X_ClimaticConditions, RestTimeFromLastMatch=X_RestTimeFromLastMatch,
       AvgPlayerValue=X_AvgPlayerValue, MatchRelevance=X_MatchRelevance, 
       AvgGoalConcededLastMatches=X_AvgGoalConcededLastMatches, SupportersImpact=X_SupportersImpact,
       OpposingSupportersImpact=X_OpposingSupportersImpact)

Y <- rename(Y, Dehydration=Y_Dehydration, Hyperthermia=Y_Hyperthermia, 
            AvgSpeed=Y_AvgSpeed, AvgTravelledDistance=Y_AvgTravelledDistance, 
            PressingCapability=Y_PressingCapability, PhysicalEndurance=Y_PhysicalEndurance,
            MentalConcentration=Y_MentalConcentration, EmotionalMotivation=Y_EmotionalMotivation)

### BEST SUBSET SELECTION DEHYDRATION ###
library(leaps)
subsel_fwd = regsubsets(Y$Dehydration~ X$Temperature + X$Humidity + X$Altitude + X$ClimaticConditions + X$RestTimeFromLastMatch + X$AvgPlayerValue + X$MatchRelevance + X$AvgGoalConcededLastMatches + X$SupportersImpact + X$OpposingSupportersImpact,data=X, nvmax=10, method='forward')
subsel_bwd = regsubsets(Y$Dehydration~ X$Temperature + X$Humidity + X$Altitude + X$ClimaticConditions + X$RestTimeFromLastMatch + X$AvgPlayerValue + X$MatchRelevance + X$AvgGoalConcededLastMatches + X$SupportersImpact + X$OpposingSupportersImpact,data=X, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd)
summary_bwd = summary(subsel_bwd)

plot(summary_fwd$rss, xlab='Model', ylab='RSS', col='red', main='Best Subset Selection Dehydration')
points(summary_bwd$rss, col='blue')

plot(summary_fwd$adjr2, xlab='Model', ylab='AdjR2', col='red', main='Best Subset Selection Dehydration')
points(summary_bwd$adjr2, col='blue')

plot(summary_fwd$cp, xlab='Model', ylab='Cp', col='red', main='Best Subset Selection Dehydration')
points(summary_bwd$cp, col='blue')

plot(summary_fwd$bic, xlab='Model', ylab='BIC', col='red', main='Best Subset Selection Dehydration')
points(summary_bwd$bic, col='blue')


### BEST SUBSET SELECTION HYPERTHERMIA ###

subsel_fwd = regsubsets(Y$Hyperthermia ~ X$Temperature + X$Humidity + X$Altitude + X$ClimaticConditions + X$RestTimeFromLastMatch + X$AvgPlayerValue + X$MatchRelevance + X$AvgGoalConcededLastMatches + X$SupportersImpact + X$OpposingSupportersImpact,data=X, nvmax=10, method='forward')
subsel_bwd = regsubsets(Y$Hyperthermia ~ X$Temperature + X$Humidity + X$Altitude + X$ClimaticConditions + X$RestTimeFromLastMatch + X$AvgPlayerValue + X$MatchRelevance + X$AvgGoalConcededLastMatches + X$SupportersImpact + X$OpposingSupportersImpact,data=X, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd)
summary_bwd = summary(subsel_bwd)

plot(summary_fwd$rss, xlab='Model', ylab='RSS', col='red', main='Best Subset Selection Hyphertermia')
points(summary_bwd$rss, col='blue')

plot(summary_fwd$adjr2, xlab='Model', ylab='AdjR2', col='red', main='Best Subset Selection Hyphertermia')
points(summary_bwd$adjr2, col='blue')

plot(summary_fwd$cp, xlab='Model', ylab='Cp', col='red', main='Best Subset Selection Hyphertermia')
points(summary_bwd$cp, col='blue')

plot(summary_fwd$bic, xlab='Model', ylab='BIC', col='red', main='Best Subset Selection Hyphertermia')
points(summary_bwd$bic, col='blue')


### BEST SUBSET SELECTION EMOTIONALMOTIVATION ###

subsel_fwd = regsubsets(Y$EmotionalMotivation ~ X$Temperature + X$Humidity + X$Altitude + X$ClimaticConditions + X$RestTimeFromLastMatch + X$AvgPlayerValue + X$MatchRelevance + X$AvgGoalConcededLastMatches + X$SupportersImpact + X$OpposingSupportersImpact,data=X, nvmax=10, method='forward')
subsel_bwd = regsubsets(Y$EmotionalMotivation ~ X$Temperature + X$Humidity + X$Altitude + X$ClimaticConditions + X$RestTimeFromLastMatch + X$AvgPlayerValue + X$MatchRelevance + X$AvgGoalConcededLastMatches + X$SupportersImpact + X$OpposingSupportersImpact,data=X, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd)
summary_bwd = summary(subsel_bwd)

plot(summary_fwd$rss, xlab='Model', ylab='RSS', col='red', main='Best Subset Selection EmotionalMotivation')
points(summary_bwd$rss, col='blue')

plot(summary_fwd$adjr2, xlab='Model', ylab='AdjR2', col='red', main='Best Subset Selection EmotionalMotivation')
points(summary_bwd$adjr2, col='blue')

plot(summary_fwd$cp, xlab='Model', ylab='Cp', col='red', main='Best Subset Selection EmotionalMotivation')
points(summary_bwd$cp, col='blue')

plot(summary_fwd$bic, xlab='Model', ylab='BIC', col='red', main='Best Subset Selection EmotionalMotivation')
points(summary_bwd$bic, col='blue')


### BEST SUBSET SELECTION PHYSICALENDURANCE ###

subsel_fwd = regsubsets(Y$PhysicalEndurance ~ X$Temperature + X$Humidity + X$Altitude + X$ClimaticConditions + X$RestTimeFromLastMatch + X$AvgPlayerValue + X$MatchRelevance + X$AvgGoalConcededLastMatches + X$SupportersImpact + X$OpposingSupportersImpact,data=X, nvmax=10, method='forward')
subsel_bwd = regsubsets(Y$PhysicalEndurance ~ X$Temperature + X$Humidity + X$Altitude + X$ClimaticConditions + X$RestTimeFromLastMatch + X$AvgPlayerValue + X$MatchRelevance + X$AvgGoalConcededLastMatches + X$SupportersImpact + X$OpposingSupportersImpact,data=X, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd)
summary_bwd = summary(subsel_bwd)

plot(summary_fwd$rss, xlab='Model', ylab='RSS', col='red', main='Best Subset Selection PhysicalEndurance')
points(summary_bwd$rss, col='blue')

plot(summary_fwd$adjr2, xlab='Model', ylab='AdjR2', col='red', main='Best Subset Selection PhysicalEndurance')
points(summary_bwd$adjr2, col='blue')

plot(summary_fwd$cp, xlab='Model', ylab='Cp', col='red', main='Best Subset Selection PhysicalEndurance')
points(summary_bwd$cp, col='blue')

plot(summary_fwd$bic, xlab='Model', ylab='BIC', col='red', main='Best Subset Selection PhysicalEndurance')
points(summary_bwd$bic, col='blue')

