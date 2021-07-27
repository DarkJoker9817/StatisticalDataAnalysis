linear.model1 = ((Y_train$Dehydration ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                   AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                   OpposingSupportersImpact))
model.subset1 = ((Y_train$Dehydration ~ Temperature+Humidity))
model.subset12 = ((Y_train$Dehydration ~ Temperature+Humidity+AvgPlayerValue))
model.subset13 = ((Y_train$Dehydration ~ Temperature+Humidity+AvgPlayerValue+Altitude))

linear.model2 = ((Y_train$Hyperthermia ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))
model.subset2 = ((Y_train$Hyperthermia ~ Temperature+Humidity))
model.subset21 = ((Y_train$Hyperthermia ~ Temperature+Humidity+RestTimeFromLastMatch+MatchRelevance))
model.subset22 = ((Y_train$Hyperthermia ~ Temperature+Humidity+Altitude+RestTimeFromLastMatch+MatchRelevance))

linear.model3 = ((Y_train$AvgSpeed ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))
model.subset3 = ((Y_train$AvgSpeed ~ Temperature+Humidity+Altitude+RestTimeFromLastMatch+
                    AvgPlayerValue))
model.subset31 = ((Y_train$AvgSpeed ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                     AvgPlayerValue+MatchRelevance))

linear.model4 = ((Y_train$AvgTravelledDistance ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))
model.subset4 = ((Y_train$AvgTravelledDistance ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+AvgGoalConcededLastMatches))
model.subset41 = ((Y_train$AvgTravelledDistance ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                     AvgPlayerValue+AvgGoalConcededLastMatches+SupportersImpact))

linear.model5 = ((Y_train$PressingCapability ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))
model.subset5 = ((Y_train$PressingCapability ~ Humidity+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance))
model.subset51 = ((Y_train$PressingCapability ~ Humidity+RestTimeFromLastMatch+
                     AvgPlayerValue+SupportersImpact+MatchRelevance))

linear.model6 = ((Y_train$PhysicalEndurance ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))
model.subset6 = ((Y_train$PhysicalEndurance ~ Humidity+RestTimeFromLastMatch+
                    AvgPlayerValue+AvgGoalConcededLastMatches))

linear.model7 = ((Y_train$MentalConcentration ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))
model.subset7 = ((Y_train$MentalConcentration ~ RestTimeFromLastMatch+
                    AvgPlayerValue+AvgGoalConcededLastMatches+SupportersImpact))
model.subset71 = ((Y_train$MentalConcentration ~ ClimaticConditions+RestTimeFromLastMatch+
                     AvgPlayerValue+AvgGoalConcededLastMatches+SupportersImpact+
                     OpposingSupportersImpact))

linear.model8 = ((Y_train$EmotionalMotivation ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))
model.subset8 = ((Y_train$EmotionalMotivation ~ AvgPlayerValue+SupportersImpact))
model.subset81 = ((Y_train$EmotionalMotivation ~ AvgPlayerValue+MatchRelevance+SupportersImpact))
model.subset82 = ((Y_train$EmotionalMotivation ~ AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                     OpposingSupportersImpact))


models = c(linear.model1, linear.model2, linear.model3, linear.model4, linear.model5, linear.model6, linear.model7, linear.model8,
           model.subset1, model.subset12, model.subset13, model.subset2, model.subset21, model.subset22, model.subset3, model.subset31,
           model.subset4, model.subset41, model.subset5, model.subset51, model.subset6, model.subset7, model.subset71, model.subset8,
           model.subset81, model.subset82)

#models_sub = c(model.subset1,model.subset12, model.subset13, model.subset2, model.subset21, model.subset22, 
               #model.subset3, model.subset31, model.subset4, model.subset41, model.subset5, model.subset51,
               #model.subset6, model.subset7, model.subset71, model.subset8, model.subset81, model.subset82)

