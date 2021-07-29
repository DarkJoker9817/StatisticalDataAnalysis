###------------------- Y = Dehydration -------------------###
# Linear model with all predictors
linear.model1 = ((Dehydration ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                   AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                   OpposingSupportersImpact))
# BestSubsetSelection 
model.subset1_1 = ((Dehydration ~ Temperature+Humidity)) #BIC
model.subset1_2 = ((Dehydration ~ Temperature+Humidity+AvgPlayerValue)) #Cp
model.subset1_3 = ((Dehydration ~ Temperature+Humidity+AvgPlayerValue+Altitude)) #AdjR2



###------------------- Y = Hyperthermia -------------------###
# Linear model with all predictors
linear.model2 = ((Hyperthermia ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))
# BestSubsetSelection
model.subset2_1 = ((Hyperthermia ~ Temperature+Humidity)) #BIC
model.subset2_2 = ((Hyperthermia ~ Temperature+Humidity+RestTimeFromLastMatch+MatchRelevance)) #Cp
model.subset2_3 = ((Hyperthermia ~ Temperature+Humidity+Altitude+RestTimeFromLastMatch+MatchRelevance)) #AdjR2


###------------------- Y = AvgSpeed-------------------###
# Linear model with all predictors
linear.model3 = ((AvgSpeed ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))
# BestSubsetSelection
model.subset3_1 = ((AvgSpeed ~ Temperature+Humidity+Altitude+RestTimeFromLastMatch+
                    AvgPlayerValue)) #Cp - BIC
model.subset3_2 = ((AvgSpeed ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                     AvgPlayerValue+MatchRelevance)) #AdjR2


###------------------- Y = AvgTravelledDistance-------------------###
# Linear model with all predictors
linear.model4 = ((AvgTravelledDistance ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))
# BestSubsetSelection
model.subset4_1 = ((AvgTravelledDistance ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+AvgGoalConcededLastMatches)) #AdjR2 - Backward


###------------------- Y = PressingCapability -------------------###
# Linear model with all predictors
linear.model5 = ((PressingCapability ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))

# BestSubsetSelection
model.subset5_1 = ((PressingCapability ~ Humidity+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance)) #BIC
model.subset5_2 = ((PressingCapability ~ Humidity+RestTimeFromLastMatch+
                     AvgPlayerValue+SupportersImpact+MatchRelevance)) #AdjR21- Cp


###------------------- Y = PhysicalEndurance -------------------###
# Linear model with all predictors
linear.model6 = ((PhysicalEndurance ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))
# BestSubsetSelection
model.subset6_1 = ((PhysicalEndurance ~ Humidity+RestTimeFromLastMatch+
                    AvgPlayerValue+AvgGoalConcededLastMatches)) #AdjR2 - Cp - BIC


###------------------- Y = MentalConcentration -------------------###
# Linear model with all predictors
linear.model7 = ((MentalConcentration ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))
# BestSubsetSelection
model.subset7_1 = ((MentalConcentration ~ RestTimeFromLastMatch+
                    AvgPlayerValue+AvgGoalConcededLastMatches+SupportersImpact)) # Cp - BIC
model.subset7_2 = ((MentalConcentration ~ ClimaticConditions+RestTimeFromLastMatch+
                     AvgPlayerValue+AvgGoalConcededLastMatches+SupportersImpact+
                     OpposingSupportersImpact)) #AdjR2


###------------------- Y = EmotionalMotivation -------------------###
# Linear model with all predictors
linear.model8 = ((EmotionalMotivation ~ Temperature+Humidity+Altitude+ClimaticConditions+RestTimeFromLastMatch+
                    AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                    OpposingSupportersImpact))
# BestSubsetSelection
model.subset8_1 = ((EmotionalMotivation ~ AvgPlayerValue+SupportersImpact)) #BIC
model.subset8_2 = ((EmotionalMotivation ~ AvgPlayerValue+MatchRelevance+SupportersImpact)) #Cp
model.subset8_3 = ((EmotionalMotivation ~ AvgPlayerValue+MatchRelevance+AvgGoalConcededLastMatches+SupportersImpact+
                     OpposingSupportersImpact)) #AdjR2


models = c(linear.model1, linear.model2, linear.model3, linear.model4, linear.model5, linear.model6, linear.model7, linear.model8,
           model.subset1_1, model.subset1_2, model.subset1_3, model.subset2_1, model.subset2_2, model.subset2_3, model.subset3_1, model.subset3_2,
           model.subset4_1, model.subset5_1, model.subset5_2, model.subset6_1, model.subset7_1, model.subset7_2, model.subset8_1,
           model.subset8_2, model.subset8_3)

