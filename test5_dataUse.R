#외부 데이터 사용
rm(list = ls())

df = read.csv('.\\data\\easySample.csv', fileEncoding = 'UTF-8-BOM') #fileEncoding 없으면 첫번째 열 이름 깨짐
print(df)
write.csv(df, 'data/mySample.csv', row.names = FALSE)
write.csv(df, 'data/mySample_wr.csv', row.names = TRUE)
#read 받아오기, write 수정하기


rm(list = ls())
cname <- c('ID', 'name', 'birth', 'dept', 'english', 'japanese', 'chinese')
df3 <- read.table('data\\easySample.txt', sep =',', col.names = cname) #sep 구분자
print(df3)


rm(list = ls())
df4 <- read.csv('data\\mySample.csv')
save(df4, file='data/myObject1.Rdata')
rm(list = ls())
load('data/myObject1.Rdata')
print(df4)
