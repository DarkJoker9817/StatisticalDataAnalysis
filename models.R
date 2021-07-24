linear.model1 = ((Dehydration ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                   AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                   OpposingSupportersImpact))

linear.model2 = ((Hyperthermia ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))

linear.model3 = ((AvgSpeed ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))

linear.model4 = ((AvgTravelledDistance ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))

linear.model5 = ((PressingCapability ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))

linear.model6 = ((PhysicalEndurance ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))

linear.model7 = ((MentalConcentration ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))

linear.model8 = ((EmotionalMotivation ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))

model.subset1 = ((Dehydration ~ Temperature+Humidity))
model.subset12 = ((Dehydration ~ Temperature+Humidity+AvgPlayerValue))
model.subset13 = ((Dehydration ~ Temperature+Humidity+AvgPlayerValue+Altitude))

model.subset2 = ((Hyperthermia ~ Temperature+Humidity))
model.subset21 = ((Hyperthermia ~ Temperature+Humidity+RestTimeFromLastMatch+MatchRelevance))
model.subset22 = ((Hyperthermia ~ Temperature+Humidity+Altitude+RestTimeFromLastMatch+MatchRelevance))

model.subset3 = ((AvgSpeed ~ Temperature+Humidity+Altitude+RestTimeFromLastMatch+
                    AvgPlayerValue))
model.subset31 = ((AvgSpeed ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance))

model.subset4 = ((AvgTravelledDistance ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+AvgGoalConcededLastMatches))
model.subset41 = ((AvgTravelledDistance ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+AvgGoalConcededLastMatches+SupportersImpact))

model.subset5 = ((PressingCapability ~ Humidity+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance))
model.subset51 = ((PressingCapability ~ Humidity+RestTimeFromLastMatch+
                    AvgPlayerValue+SupportersImpact+MatchRelevance))

model.subset6 = ((PhysicalEndurance ~ Humidity+RestTimeFromLastMatch+
                    AvgPlayerValue+AvgGoalConcededLastMatches))

model.subset7 = ((MentalConcentration ~ RestTimeFromLastMatch+
                    AvgPlayerValue+AvgGoalConcededLastMatches+SupportersImpact))
model.subset71 = ((MentalConcentration ~ ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))

model.subset8 = ((EmotionalMotivation ~ AvgPlayerValue+SupportersImpact))
model.subset81 = ((EmotionalMotivation ~ AvgPlayerValue+MatchRelevance+SupportersImpact))
model.subset82 = ((EmotionalMotivation ~ AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))


models = c(linear.model1, linear.model2, linear.model3, linear.model4, linear.model5, linear.model6, linear.model7, linear.model8, model.subset1, model.subset2, model.subset3, model.subset4, model.subset5, model.subset6, model.subset7, model.subset8,model.subset12,model.subset13, model.subset21, model.subset22, model.subset31,model.subset41, model.subset51, model.subset71, model.subset81, model.subset82)

