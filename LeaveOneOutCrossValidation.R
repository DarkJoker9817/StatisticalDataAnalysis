library(ISLR)
library(boot)

cv.error=rep(0,7)
for (i in 1:26){
  glm.fit=glm(models[[i]],data=myds)
  cv.error[i]=cv.glm(myds,glm.fit)$delta[1]
}
print(cv.error)

