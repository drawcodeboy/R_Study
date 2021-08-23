#패키지 설치
#install.packages('패키지 이름') #패키지 이름은 문자열로

#패키지 로딩
#library('패키지 이름'), library(패키지이름) #패키지 이름은 문자열 / 이름 자체

#주요 패키지
#reshape (melt, cast, fomula)
#reshape2 cast 대신에 acast, dcast 사용
#sqldf sqldf('sql 문자열')
#plyr ??ply, adply(), ddply() ...

rm(list = ls())
install.packages('reshape') #설치
library(reshape) #로딩

data(airquality)
names(airquality)
colnames(airquality) <- tolower(colnames(airquality)) # 열 이름을 대문자에서 소문자로 바꿔줌
names(airquality)

a <- melt(airquality, id = c('month','day'), na.rm = TRUE)
#id로 둔 열들은 놔두고, 나머지 열들은 variable의 factor로 들어가고, 값들은 value로 들어간다.
r1 <- cast(a, day~month~variable)
r2 <- cast(a, month~variable, mean)
r3 <- cast(a, month~variable, mean, margins = c('grand_row', 'grand_col'))
r4 <- cast(a, day~month, mean, subset=variable=='ozone')
r5 <- cast(a, month~variable, range)