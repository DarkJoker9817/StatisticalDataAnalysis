setwd("/Users/ugobarbato/Desktop/Università/Statistical\ Data\ Analysis/Project/")
getwd()
mydataset = read.csv("RegressionData_SDA_AH_group3.csv")
mydataset = as.matrix(mydataset)
mydataset = scale(mydataset)

mydataset = as.data.frame(mydataset)

library(plyr)
library(readr)
library(ggplot2)
library(GGally)
library(dplyr)
library(mlbench)
library(caret)

#preproc1 <- preProcess(mydataset, method=c("center", "scale"))

#norm1 <- predict(preproc1, mydataset)

#summary(norm1)

preproc2 <- preProcess(mydataset, method=c("range"))

norm2 <- predict(preproc2, mydataset)

summary(norm2)
mydataset = norm2

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


myLambda = 0.1
lambda_grid=10^seq(-3, 10, length=50)

splitpoint = 30
X_train = X[1:splitpoint,]
X_test = X[(splitpoint+1):40,]
Y_train = Y[1:splitpoint,]
Y_test = Y[(splitpoint+1):40,]

mse_func=function(actual, predicted)
{
  mean( (actual-predicted)^2 )
}

library(glmnet)
### Ridge and Lasso fit and prediction for single lambda
ridge_model=glmnet(X_train, Y_train$Y_Dehydration, alpha=0, lambda=myLambda) #Ridge->alpha=0, Lasso->alpha=1
X_test = as.matrix(X_test)
ridge_pred=predict(ridge_model, s=myLambda, newx=X_test)

lasso_model=glmnet(X_train, Y_train$Y_Dehydration, alpha=1, lambda=myLambda) #Ridge->alpha=0, Lasso->alpha=1
lasso_pred=predict(lasso_model, s=myLambda, newx=X_test)
mse_ridge=mse_func(ridge_pred, Y_test$Dehydration)
mse_lasso=mse_func(lasso_pred, Y_test$Dehydration)

