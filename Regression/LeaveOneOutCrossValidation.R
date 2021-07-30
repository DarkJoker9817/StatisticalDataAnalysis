library(ISLR)
library(boot)

cv.error.LOOCV=rep(0,25)
for (i in 1:25){
  glm.fit=glm(models[[i]], data=myds)
  cv.error.LOOCV[i]=cv.glm(myds, glm.fit, K=40)$delta[1]
}
print(cv.error.LOOCV)

