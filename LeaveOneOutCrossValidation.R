### ------ LEAVE ONE OUT CROSS VALIDATION -----#
library(ISLR)
library(boot)

print(length(models))
cv.error=rep(0,7)
for (i in 1:26){
  glm.fit=glm(models[[i]],data=myds)
  print(glm.fit)
  cv.error[i]=cv.glm(myds,glm.fit)$delta[1]
}
print(cv.error)
