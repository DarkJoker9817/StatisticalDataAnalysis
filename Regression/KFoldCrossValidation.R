library(ISLR)
library(boot)

set.seed(1389)

k=10 #the dataset will be splitted in 10 parts

cv.error.KFold=rep(0,25)
for (i in 1:25){
  glm.fit=glm(models[[i]],data=myds)
  cv.error.KFold[i]=cv.glm(myds ,glm.fit,K=k)$delta[1]
}
print(cv.error.KFold)
