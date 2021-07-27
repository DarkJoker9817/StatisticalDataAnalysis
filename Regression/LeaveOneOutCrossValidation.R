library(ISLR)
library(boot)

cv.error.LOOCV=rep(0,25)
for (i in 1:25){
  glm.fit=glm(models[[i]], data=X_train)
  cv.error.LOOCV[i]=cv.glm(X_train, glm.fit)$delta[1]
}
print(cv.error.LOOCV)

