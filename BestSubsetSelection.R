library(leaps)

###----------- Best Subset Selection for Dehydration -----------###

subsel_fwd = regsubsets(Y_train$Dehydration ~ .,data=X_train, nvmax=10, method='forward')
subsel_bwd = regsubsets(Y_train$Dehydration ~ .,data=X_train, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd)
summary_bwd = summary(subsel_bwd)

plot(summary_fwd$rss, xlab='Models', ylab='RSS', col='red', main='Best Subset Selection Dehydration')
points(summary_bwd$rss, col='blue')

plot(summary_fwd$adjr2, xlab='Model', ylab='AdjR2', col='red', main='Best Subset Selection Dehydration')
points(summary_bwd$adjr2, col='blue')

plot(summary_fwd$cp, xlab='Model', ylab='Cp', col='red', main='Best Subset Selection Dehydration')
points(summary_bwd$cp, col='blue')

plot(summary_fwd$bic, xlab='Model', ylab='BIC', col='red', main='Best Subset Selection Dehydration')
points(summary_bwd$bic, col='blue')


###----------- Best Subset Selection for Hyperthermia -----------###

subsel_fwd = regsubsets(Y_train$Hyperthermia ~ ., data=X_train, nvmax=10, method='forward')
subsel_bwd = regsubsets(Y_train$Hyperthermia ~ ., data=X_train, nvmax=10, method='backward')

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


###----------- Best Subset Selection for AvgSpeed -----------###

subsel_fwd = regsubsets(Y_train$AvgSpeed ~ ., data=X_train, nvmax=10, method='forward')
subsel_bwd = regsubsets(Y_train$AvgSpeed ~ ., data=X_train, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd)
summary_bwd = summary(subsel_bwd)

plot(summary_fwd$rss, xlab='Model', ylab='RSS', col='red', main='Best Subset Selection AvgSpeed')
points(summary_bwd$rss, col='blue')

plot(summary_fwd$adjr2, xlab='Model', ylab='AdjR2', col='red', main='Best Subset Selection AvgSpeed')
points(summary_bwd$adjr2, col='blue')

plot(summary_fwd$cp, xlab='Model', ylab='Cp', col='red', main='Best Subset Selection AvgSpeed')
points(summary_bwd$cp, col='blue')

plot(summary_fwd$bic, xlab='Model', ylab='BIC', col='red', main='Best Subset Selection AvgSpeed')
points(summary_bwd$bic, col='blue')


###----------- Best Subset Selection for AvgTravelledDistance -----------###

subsel_fwd = regsubsets(Y_train$AvgTravelledDistance ~ ., data=X_train, nvmax=10, method='forward')
subsel_bwd = regsubsets(Y_train$AvgTravelledDistance ~ ., data=X_train, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd)
summary_bwd = summary(subsel_bwd)

plot(summary_fwd$rss, xlab='Model', ylab='RSS', col='red', main='Best Subset Selection AvgTravelledDistance')
points(summary_bwd$rss, col='blue')

plot(summary_fwd$adjr2, xlab='Model', ylab='AdjR2', col='red', main='Best Subset Selection AvgTravelledDistance')
points(summary_bwd$adjr2, col='blue')

plot(summary_fwd$cp, xlab='Model', ylab='Cp', col='red', main='Best Subset Selection AvgTravelledDistance')
points(summary_bwd$cp, col='blue')

plot(summary_fwd$bic, xlab='Model', ylab='BIC', col='red', main='Best Subset Selection AvgTravelledDistance')
points(summary_bwd$bic, col='blue')


###----------- Best Subset Selection for PressingCapability -----------###

subsel_fwd = regsubsets(Y_train$PressingCapability ~ ., data=X_train, nvmax=10, method='forward')
subsel_bwd = regsubsets(Y_train$PressingCapability ~ ., data=X_train, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd)
summary_bwd = summary(subsel_bwd)

plot(summary_fwd$rss, xlab='Model', ylab='RSS', col='red', main='Best Subset Selection PressingCapability')
points(summary_bwd$rss, col='blue')

plot(summary_fwd$adjr2, xlab='Model', ylab='AdjR2', col='red', main='Best Subset Selection PressingCapability')
points(summary_bwd$adjr2, col='blue')

plot(summary_fwd$cp, xlab='Model', ylab='Cp', col='red', main='Best Subset Selection PressingCapability')
points(summary_bwd$cp, col='blue')

plot(summary_fwd$bic, xlab='Model', ylab='BIC', col='red', main='Best Subset Selection PressingCapability')
points(summary_bwd$bic, col='blue')


###----------- Best Subset Selection for PhysicalEndurance -----------###

subsel_fwd = regsubsets(Y_train$PhysicalEndurance ~ ., data=X_train, nvmax=10, method='forward')
subsel_bwd = regsubsets(Y_train$PhysicalEndurance ~ ., data=X_train, nvmax=10, method='backward')

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


###----------- Best Subset Selection for MentalConcentration -----------###

subsel_fwd = regsubsets(Y_train$MentalConcentration ~ ., data=X_train, nvmax=10, method='forward')
subsel_bwd = regsubsets(Y_train$MentalConcentration ~ ., data=X_train, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd)
summary_bwd = summary(subsel_bwd)

plot(summary_fwd$rss, xlab='Model', ylab='RSS', col='red', main='Best Subset Selection MentalConcentration')
points(summary_bwd$rss, col='blue')

plot(summary_fwd$adjr2, xlab='Model', ylab='AdjR2', col='red', main='Best Subset Selection MentalConcentration')
points(summary_bwd$adjr2, col='blue')

plot(summary_fwd$cp, xlab='Model', ylab='Cp', col='red', main='Best Subset Selection MentalConcentration')
points(summary_bwd$cp, col='blue')

plot(summary_fwd$bic, xlab='Model', ylab='BIC', col='red', main='Best Subset Selection MentalConcentration')
points(summary_bwd$bic, col='blue')


###----------- Best Subset Selection for EmotionalMotivation -----------###

subsel_fwd = regsubsets(Y_train$EmotionalMotivation ~ ., data=X_train, nvmax=10, method='forward')
subsel_bwd = regsubsets(Y_train$EmotionalMotivation ~ ., data=X_train, nvmax=10, method='backward')

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


