#list
#서로 다른 데이터 타입을 담을 수 있음
#리스트에 저장된 데이터를 index 또는 key를 사용해 접근함
#생성 함수 list(key = value, key = value)

rm(list=ls())
a <- list(name = 'julie',
          age = 25,
          h_w = c(160, 48))
v1 <- a['name'] # key, list
v2 <- a$name # Scalar
v3 <- a[['name']] # Scalar가 됨 []가 하나 더 있어서 타입 하나 다운 되어서 나옴
v4 <- a[1] #List
v5 <- a[[3]] #Scalar
#key나 index로 list 타입 리턴, 대괄호 한 번 더 하면 스칼라 타입 리턴

str(a) #str(), 데이터 구조 확인