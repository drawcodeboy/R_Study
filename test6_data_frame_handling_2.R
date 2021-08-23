rm(list = ls())
View(iris)
head(iris, 3) #iris라는 데이터셋의 앞에서 3개의 데이터
tail(iris, 3) #iris라는 데이터셋의 뒤에서 3개의 데이터

summary(iris)
#summary 
#수치 데이터:
#Min 최솟값, 1st Qu 1사분위수, Median 중간값 (2사분위수), Mean 평균, 3rd Qu 3사분위수, Max 최댓값
#범주형 데이터:
#범주의 개수를 정리해줌

str(iris)

print(iris$Sepal.Width)

attach(iris)
print(Sepal.Width) 
detach(iris)
print(Sepal.Width) #Error in print
