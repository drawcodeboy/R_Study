#data.frame
#엑셀의 WorkSheet와 같은 구조의 2차원 데이터
#'여러 가지 데이터 유형'을 가질 수 있음, 벡터 별로 다른 데이터 유형 가능
#벡터가 모여 데이터 프레임을 구성함

#data.frame 생성
#data.frame(vector or matrices, stirngAsFactors) #벡터의 길이는 모두 같아야 함
#data.frame(변수명=벡터,...,stirngAsFactors)
#stringAsFactors를 TRUE로 지정하면 문자열을 factor형으로 저장함 (dafault = FALSE)

rm(list = ls())
name <- c("tom", "jerry", "cindy", "mark")
gender <- c('f', 'm', 'f', 'm')
kor <- c(90, 100, 80, 95)
eng <- c(90, 95, 100, 80)
df1 <- data.frame(name, gender, kor, eng)
df2 <- data.frame(matrix(seq(1,9), nrow = 3))
df3 <- data.frame(gender = c('f', 'm', 'f', 'm'),
                  score = c(90, 100, 80, 95),
                  stringsAsFactors = TRUE)
str(df3)

#data.frame 인덱싱
#인덱싱 했을 때 리턴 되는 것이 vector인지 data.frame인지 구분할 것
rm(list = ls())
name <- c("tom", "jerry", "cindy", "mark")
gender <- c('f', 'm', 'f', 'm')
kor <- c(90, 100, 80, 95)
eng <- c(90, 95, 100, 80)
df1 <- data.frame(name, gender, kor, eng)
v1 <- df1[1, 3]
v2 <- df1[2, ] #서로 다른 데이터 타입이기 때문에 data.frame으로 만들어진다
v3 <- df1[,'name']
v4 <- df1$name # v3 == v4
df2 <- df1[1] # df2 == data.frame
df3 <- df1['name']
v4 <- df1[[1]] # 1번 열, vector타입 리턴
df4 <- df1[seq(1, 3), c(1, 2)]
df5 <- df1[, 2:4]
df6 <- df1[1:3]
df7 <- df1[-2]
df8 <- df1[-c(1, 3, 4)]
