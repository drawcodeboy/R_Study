#data.frame 핸들링
#새로운 변수 만들기, 조건으로 선택, 목록으로 선택, 열, 열 목록 제거, 열 이름 바꾸기

rm(list = ls())
df <- read.csv('./data/easySample3.csv', fileEncoding = 'UTF-8-BOM')

#setwd(), getwd()
#getwd() = 현재 워킹 디렉토리 확인
#setwd() = 워킹 디렉토리 설정

df1 <- df[, c(2, 4, 8, 9)]
df1$score <- c(90,80,50,70,100,95,85,70,95,75)
df2 <- subset(df1, subset = (salary >= 5000)) #조건문 subset ==> df1에서 salary가 5000이상인 것
df3 <- subset(df2, select =- score) #특정열 제외
df4 <- subset(df1, subset = (salary >= 5000), select =- score)
df5 <- subset(df2, select = c(pname, dept, salary))
colnames(df5)[2] <- 'department' #열 이름 바꾸기