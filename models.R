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

model.subset1 = ((Dehydration ~ .))

model.subset2 = ((Hyperthermia ~ .))

model.subset3 = ((AvgSpeed ~ .))

model.subset4 = ((AvgTravelledDistance ~ .))

model.subset5 = ((PressingCapability ~ .))

model.subset6 = ((PhysicalEndurance ~ .))

model.subset7 = ((MentalConcentration ~ .))

model.subset8 = ((EmotionalMotivation ~ .))

models = c(linear.model1, linear.model2, linear.model3, linear.model4, linear.model5, linear.model6, linear.model7, linear.model8, model.subset1, model.subset2, model.subset3, model.subset4, model.subset5, model.subset6, model.subset7, model.subset8)

