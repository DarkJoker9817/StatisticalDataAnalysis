### ----- K FOLD CROSS VALIDATION -----###
library(ISLR)
library(boot)

set.seed(1389)

k=10 #the dataset will be splitted in 10 parts

cv.error.10=rep(0,26)
for (i in 1:26){
  glm.fit=glm(models[[i]],data=myds)
  cv.error.10[i]=cv.glm(myds ,glm.fit,K=k)$delta [1]
}
print(cv.error.10)
