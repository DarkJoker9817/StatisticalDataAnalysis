library(leaps)

###----------- Best Subset Selection for Dehydration -----------###

subsel_fwd_1 = regsubsets(Y_train$Dehydration ~ .,data=X_train, nvmax=10, method='forward')
subsel_bwd_1 = regsubsets(Y_train$Dehydration ~ .,data=X_train, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd_1)
summary_bwd = summary(subsel_bwd_1)

plot(summary_fwd$rss, xlab='Predictors', ylab='RSS', col='orange', main='Best Subset Selection Dehydration', type='p')
points(summary_bwd$rss, col='blue', cex=2)
points(which.min(summary_fwd$rss), min(summary_fwd$rss), col='red', cex=1, pch=20)
points(which.min(summary_bwd$rss), min(summary_bwd$rss), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinRSSForward', 'MinRSSBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$adjr2, xlab='Predictors', ylab='AdjR2', col='orange', main='Best Subset Selection Dehydration', type='p')
points(summary_bwd$adjr2, col='blue', cex=2)
points(which.max(summary_fwd$adjr2), max(summary_fwd$adjr2), col='red', cex=1, pch=20)
points(which.max(summary_bwd$adjr2), max(summary_bwd$adjr2), col='green', cex=1, pch=2)
legend('bottomright', legend=c('Forward', 'Backard', 'MinAdjR2Forward', 'MinAdjR2Backward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$cp, xlab='Predictors', ylab='Cp', col='orange', main='Best Subset Selection Dehydration', type='p')
points(summary_bwd$cp, col='blue', cex=2)
points(which.min(summary_fwd$cp), min(summary_fwd$cp), col='red', cex=1, pch=20)
points(which.min(summary_bwd$cp), min(summary_bwd$cp), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinCpForward', 'MinCpBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$bic, xlab='Predictors', ylab='BIC', col='orange', main='Best Subset Selection Dehydration', type='p')
points(summary_bwd$bic, col='blue', cex=2)
points(which.min(summary_fwd$bic), min(summary_fwd$bic), col='red', cex=1, pch=20)
points(which.min(summary_bwd$bic), min(summary_bwd$bic), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinBICForward', 'MinBICBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))



###----------- Best Subset Selection for Hyperthermia -----------###

subsel_fwd_2 = regsubsets(Y_train$Hyperthermia ~ ., data=X_train, nvmax=10, method='forward')
subsel_bwd_2 = regsubsets(Y_train$Hyperthermia ~ ., data=X_train, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd_2)
summary_bwd = summary(subsel_bwd_2)

plot(summary_fwd$rss, xlab='Predictors', ylab='RSS', col='orange', main='Best Subset Selection Hyperthermia', type='p')
points(summary_bwd$rss, col='blue', cex=2)
points(which.min(summary_fwd$rss), min(summary_fwd$rss), col='red', cex=1, pch=20)
points(which.min(summary_bwd$rss), min(summary_bwd$rss), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinRSSForward', 'MinRSSBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$adjr2, xlab='Predictors', ylab='AdjR2', col='orange', main='Best Subset Selection Hyperthermia', type='p')
points(summary_bwd$adjr2, col='blue', cex=2)
points(which.max(summary_fwd$adjr2), max(summary_fwd$adjr2), col='red', cex=1, pch=20)
points(which.max(summary_bwd$adjr2), max(summary_bwd$adjr2), col='green', cex=1, pch=2)
legend('bottomright', legend=c('Forward', 'Backard', 'MinAdjR2Forward', 'MinAdjR2Backward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$cp, xlab='Predictors', ylab='Cp', col='orange', main='Best Subset Selection Hyperthermia', type='p')
points(summary_bwd$cp, col='blue', cex=2)
points(which.min(summary_fwd$cp), min(summary_fwd$cp), col='red', cex=1, pch=20)
points(which.min(summary_bwd$cp), min(summary_bwd$cp), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinCpForward', 'MinCpBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$bic, xlab='Predictors', ylab='BIC', col='orange', main='Best Subset Selection Hyperthermia', type='p')
points(summary_bwd$bic, col='blue', cex=2)
points(which.min(summary_fwd$bic), min(summary_fwd$bic), col='red', cex=1, pch=20)
points(which.min(summary_bwd$bic), min(summary_bwd$bic), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinBICForward', 'MinBICBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))


###----------- Best Subset Selection for AvgSpeed -----------###

subsel_fwd_3 = regsubsets(Y_train$AvgSpeed ~ ., data=X_train, nvmax=10, method='forward')
subsel_bwd_3 = regsubsets(Y_train$AvgSpeed ~ ., data=X_train, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd_3)
summary_bwd = summary(subsel_bwd_3)

plot(summary_fwd$rss, xlab='Predictors', ylab='RSS', col='orange', main='Best Subset Selection AvgSpeed', type='p')
points(summary_bwd$rss, col='blue', cex=2)
points(which.min(summary_fwd$rss), min(summary_fwd$rss), col='red', cex=1, pch=20)
points(which.min(summary_bwd$rss), min(summary_bwd$rss), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinRSSForward', 'MinRSSBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$adjr2, xlab='Predictors', ylab='AdjR2', col='orange', main='Best Subset Selection AvgSpeed', type='p')
points(summary_bwd$adjr2, col='blue', cex=2)
points(which.max(summary_fwd$adjr2), max(summary_fwd$adjr2), col='red', cex=1, pch=20)
points(which.max(summary_bwd$adjr2), max(summary_bwd$adjr2), col='green', cex=1, pch=2)
legend('bottomright', legend=c('Forward', 'Backard', 'MinAdjR2Forward', 'MinAdjR2Backward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$cp, xlab='Predictors', ylab='Cp', col='orange', main='Best Subset Selection AvgSpeed', type='p')
points(summary_bwd$cp, col='blue', cex=2)
points(which.min(summary_fwd$cp), min(summary_fwd$cp), col='red', cex=1, pch=20)
points(which.min(summary_bwd$cp), min(summary_bwd$cp), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinCpForward', 'MinCpBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$bic, xlab='Predictors', ylab='BIC', col='orange', main='Best Subset Selection AvgSpeed', type='p')
points(summary_bwd$bic, col='blue', cex=2)
points(which.min(summary_fwd$bic), min(summary_fwd$bic), col='red', cex=1, pch=20)
points(which.min(summary_bwd$bic), min(summary_bwd$bic), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinBICForward', 'MinBICBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))



###----------- Best Subset Selection for AvgTravelledDistance -----------###

subsel_fwd_4 = regsubsets(Y_train$AvgTravelledDistance ~ ., data=X_train, nvmax=10, method='forward')
subsel_bwd_4 = regsubsets(Y_train$AvgTravelledDistance ~ ., data=X_train, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd_4)
summary_bwd = summary(subsel_bwd_4)

plot(summary_fwd$rss, xlab='Predictors', ylab='RSS', col='orange', main='Best Subset Selection AvgTravelledDistance', type='p')
points(summary_bwd$rss, col='blue', cex=2)
points(which.min(summary_fwd$rss), min(summary_fwd$rss), col='red', cex=1, pch=20)
points(which.min(summary_bwd$rss), min(summary_bwd$rss), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinRSSForward', 'MinRSSBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$adjr2, xlab='Predictors', ylab='AdjR2', col='orange', main='Best Subset Selection AvgTravelledDistance', type='p')
points(summary_bwd$adjr2, col='blue', cex=2)
points(which.max(summary_fwd$adjr2), max(summary_fwd$adjr2), col='red', cex=1, pch=20)
points(which.max(summary_bwd$adjr2), max(summary_bwd$adjr2), col='green', cex=1, pch=2)
legend('bottomright', legend=c('Forward', 'Backard', 'MinAdjR2Forward', 'MinAdjR2Backward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$cp, xlab='Predictors', ylab='Cp', col='orange', main='Best Subset Selection AvgTravelledDistance', type='p')
points(summary_bwd$cp, col='blue', cex=2)
points(which.min(summary_fwd$cp), min(summary_fwd$cp), col='red', cex=1, pch=20)
points(which.min(summary_bwd$cp), min(summary_bwd$cp), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinCpForward', 'MinCpBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$bic, xlab='Predictors', ylab='BIC', col='orange', main='Best Subset Selection AvgTravelledDistance', type='p', ylim=c(-30,-5))
points(summary_bwd$bic, col='blue', cex=2)
points(which.min(summary_fwd$bic), min(summary_fwd$bic), col='red', cex=1, pch=20)
points(which.min(summary_bwd$bic), min(summary_bwd$bic), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinBICForward', 'MinBICBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))



###----------- Best Subset Selection for PressingCapability -----------###

subsel_fwd_5 = regsubsets(Y_train$PressingCapability ~ ., data=X_train, nvmax=10, method='forward')
subsel_bwd_5 = regsubsets(Y_train$PressingCapability ~ ., data=X_train, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd_5)
summary_bwd = summary(subsel_bwd_5)

plot(summary_fwd$rss, xlab='Predictors', ylab='RSS', col='orange', main='Best Subset Selection PressingCapability', type='p')
points(summary_bwd$rss, col='blue', cex=2)
points(which.min(summary_fwd$rss), min(summary_fwd$rss), col='red', cex=1, pch=20)
points(which.min(summary_bwd$rss), min(summary_bwd$rss), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinRSSForward', 'MinRSSBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$adjr2, xlab='Predictors', ylab='AdjR2', col='orange', main='Best Subset Selection PressingCapability', type='p')
points(summary_bwd$adjr2, col='blue', cex=2)
points(which.max(summary_fwd$adjr2), max(summary_fwd$adjr2), col='red', cex=1, pch=20)
points(which.max(summary_bwd$adjr2), max(summary_bwd$adjr2), col='green', cex=1, pch=2)
legend('bottomright', legend=c('Forward', 'Backard', 'MinAdjR2Forward', 'MinAdjR2Backward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$cp, xlab='Predictors', ylab='Cp', col='orange', main='Best Subset Selection PressingCapability', type='p')
points(summary_bwd$cp, col='blue', cex=2)
points(which.min(summary_fwd$cp), min(summary_fwd$cp), col='red', cex=1, pch=20)
points(which.min(summary_bwd$cp), min(summary_bwd$cp), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinCpForward', 'MinCpBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))


plot(summary_fwd$bic, xlab='Predictors', ylab='BIC', col='orange', main='Best Subset Selection PressingCapability', type='p')
points(summary_bwd$bic, col='blue', cex=2)
points(which.min(summary_fwd$bic), min(summary_fwd$bic), col='red', cex=1, pch=20)
points(which.min(summary_bwd$bic), min(summary_bwd$bic), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinBICForward', 'MinBICBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))



###----------- Best Subset Selection for PhysicalEndurance -----------###

subsel_fwd_6 = regsubsets(Y_train$PhysicalEndurance ~ ., data=X_train, nvmax=10, method='forward')
subsel_bwd_6 = regsubsets(Y_train$PhysicalEndurance ~ ., data=X_train, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd_6)
summary_bwd = summary(subsel_bwd_6)

plot(summary_fwd$rss, xlab='Predictors', ylab='RSS', col='orange', main='Best Subset Selection PhysicalEndurance', type='p')
points(summary_bwd$rss, col='blue', cex=2)
points(which.min(summary_fwd$rss), min(summary_fwd$rss), col='red', cex=1, pch=20)
points(which.min(summary_bwd$rss), min(summary_bwd$rss), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinRSSForward', 'MinRSSBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$adjr2, xlab='Predictors', ylab='AdjR2', col='orange', main='Best Subset Selection PhysicalEndurance', type='p')
points(summary_bwd$adjr2, col='blue', cex=2)
points(which.max(summary_fwd$adjr2), max(summary_fwd$adjr2), col='red', cex=1, pch=20)
points(which.max(summary_bwd$adjr2), max(summary_bwd$adjr2), col='green', cex=1, pch=2)
legend('bottomright', legend=c('Forward', 'Backard', 'MinAdjR2Forward', 'MinAdjR2Backward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$cp, xlab='Predictors', ylab='Cp', col='orange', main='Best Subset Selection PhysicalEndurance', type='p')
points(summary_bwd$cp, col='blue', cex=2)
points(which.min(summary_fwd$cp), min(summary_fwd$cp), col='red', cex=1, pch=20)
points(which.min(summary_bwd$cp), min(summary_bwd$cp), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinCpForward', 'MinCpBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))


plot(summary_fwd$bic, xlab='Predictors', ylab='BIC', col='orange', main='Best Subset Selection PhysicalEndurance', type='p')
points(summary_bwd$bic, col='blue', cex=2)
points(which.min(summary_fwd$bic), min(summary_fwd$bic), col='red', cex=1, pch=20)
points(which.min(summary_bwd$bic), min(summary_bwd$bic), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinBICForward', 'MinBICBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))



###----------- Best Subset Selection for MentalConcentration -----------###

subsel_fwd_7 = regsubsets(Y_train$MentalConcentration ~ ., data=X_train, nvmax=10, method='forward')
subsel_bwd_7 = regsubsets(Y_train$MentalConcentration ~ ., data=X_train, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd_7)
summary_bwd = summary(subsel_bwd_7)

plot(summary_fwd$rss, xlab='Predictors', ylab='RSS', col='orange', main='Best Subset Selection MentalConcentration', type='p')
points(summary_bwd$rss, col='blue', cex=2)
points(which.min(summary_fwd$rss), min(summary_fwd$rss), col='red', cex=1, pch=20)
points(which.min(summary_bwd$rss), min(summary_bwd$rss), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinRSSForward', 'MinRSSBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$adjr2, xlab='Predictors', ylab='AdjR2', col='orange', main='Best Subset Selection MentalConcentration', type='p')
points(summary_bwd$adjr2, col='blue', cex=2)
points(which.max(summary_fwd$adjr2), max(summary_fwd$adjr2), col='red', cex=1, pch=20)
points(which.max(summary_bwd$adjr2), max(summary_bwd$adjr2), col='green', cex=1, pch=2)
legend('bottomright', legend=c('Forward', 'Backard', 'MinAdjR2Forward', 'MinAdjR2Backward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$cp, xlab='Predictors', ylab='Cp', col='orange', main='Best Subset Selection MentalConcentration', type='p')
points(summary_bwd$cp, col='blue', cex=2)
points(which.min(summary_fwd$cp), min(summary_fwd$cp), col='red', cex=1, pch=20)
points(which.min(summary_bwd$cp), min(summary_bwd$cp), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinCpForward', 'MinCpBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))


plot(summary_fwd$bic, xlab='Predictors', ylab='BIC', col='orange', main='Best Subset Selection MentalConcentration', type='p')
points(summary_bwd$bic, col='blue', cex=2)
points(which.min(summary_fwd$bic), min(summary_fwd$bic), col='red', cex=1, pch=20)
points(which.min(summary_bwd$bic), min(summary_bwd$bic), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinBICForward', 'MinBICBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))



###----------- Best Subset Selection for EmotionalMotivation -----------###

subsel_fwd_8 = regsubsets(Y_train$EmotionalMotivation ~ ., data=X_train, nvmax=10, method='forward')
subsel_bwd_8 = regsubsets(Y_train$EmotionalMotivation ~ ., data=X_train, nvmax=10, method='backward')

summary_fwd = summary(subsel_fwd_8)
summary_bwd = summary(subsel_bwd_8)

plot(summary_fwd$rss, xlab='Predictors', ylab='RSS', col='orange', main='Best Subset Selection EmotionalMotivation', type='p')
points(summary_bwd$rss, col='blue', cex=2)
points(which.min(summary_fwd$rss), min(summary_fwd$rss), col='red', cex=1, pch=20)
points(which.min(summary_bwd$rss), min(summary_bwd$rss), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinRSSForward', 'MinRSSBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$adjr2, xlab='Predictors', ylab='AdjR2', col='orange', main='Best Subset Selection EmotionalMotivation', type='p')
points(summary_bwd$adjr2, col='blue', cex=2)
points(which.max(summary_fwd$adjr2), max(summary_fwd$adjr2), col='red', cex=1, pch=20)
points(which.max(summary_bwd$adjr2), max(summary_bwd$adjr2), col='green', cex=1, pch=2)
legend('bottomright', legend=c('Forward', 'Backard', 'MinAdjR2Forward', 'MinAdjR2Backward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

plot(summary_fwd$cp, xlab='Predictors', ylab='Cp', col='orange', main='Best Subset Selection EmotionalMotivation', type='p')
points(summary_bwd$cp, col='blue', cex=2)
points(which.min(summary_fwd$cp), min(summary_fwd$cp), col='red', cex=1, pch=20)
points(which.min(summary_bwd$cp), min(summary_bwd$cp), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinCpForward', 'MinCpBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))


plot(summary_fwd$bic, xlab='Predictors', ylab='BIC', col='orange', main='Best Subset Selection EmotionalMotivation', type='p')
points(summary_bwd$bic, col='blue', cex=2)
points(which.min(summary_fwd$bic), min(summary_fwd$bic), col='red', cex=1, pch=20)
points(which.min(summary_bwd$bic), min(summary_bwd$bic), col='green', cex=1, pch=2)
legend('topright', legend=c('Forward', 'Backard', 'MinBICForward', 'MinBICBackward'), col=c('orange', 'blue','red', 'green'),pch=c(1, 1, 20, 2))

