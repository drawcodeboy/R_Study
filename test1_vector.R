#하나 이상의 스칼라(=길이가 1인 벡터) 원소들을 갖는 단순한 형태의 집합
#숫자, 문자, 논리형 데이터를 원소(Element)로 사용할 수 있음
#동일한 자료형을 갖는 값들의 집합으로 하나의 열(Column)로 구성됨
#벡터 생성 함수: c(value1, value2 ...), seq(form, to, by), rep(x, times, each) (seq = sequence, rep = repeat)

#벡터 생성
rm(list = ls())
iv <- c(1, 2, 3)
cv <- c('A', 'B', 'C')
bv <- c(TRUE, FALSE)
t <- c(1, 2, 3, 4)
fv <- c(3.4, 2.5, 8)
icv <- c(iv, cv, bv)
#icv 서로 다른 타입을 연결할 경우 문자열 취급되어 연결됨

rm(list = ls())
v1 = seq(1, 5) # == v11 = 1:5
v2 = seq(1, 10, 2)
v3 = seq(1, 10, length = 4) # 4개를 생성한다. 간격은 알아서 조절
v4 = seq(1, 3, length = 5)

rm(list = ls())
v1 = rep(1, 5)
v2 = rep(1, time = 5)
v3 = rep(3:5, time = 3)
v4 = rep(3:5, each = 2)
v5 = rep(seq(1,5,2), 2)
# c, seq, rep

#벡터 연산
rm(list=ls())
v1 <- seq(2, 10, 2)
v2 <- rep(2, 5)
v3 <- v1 + v2 #같은 element 위치에 있는 것끼리 연산하게 됨
v4 <- v1 %/% v2
v5 <- v1 ^ v2
x <- c(1, 4, 8)
y <- c(2, 3)
z <- t(y) #전치행렬: 행과 열의 개념을 바꿔놓음
m <- x %*% z #행렬곱, 행 * 열

rm(list=ls())
v1 <- rep(3, 6) # 길이(time)가 7일 때, 두 객체의 길이가 서로 배수관계에 있지 않는다고 오류가 뜬다
v2 <- c(1, 2, 3)
v3 <- v1 + v2
v4 <- v2 + 3 # 각 element에 3을 더해준다


#인덱싱 (기존에 알고있던 index 0부터가 아님)
rm(list=ls())
v1 <- seq(1,5)
r1 = v1[3] #3번 인덱스
r2 = v1[-3] #3번 인덱스를 제외하고 모두
r3 = v1[2:4]
#가져오는 것에 따라 타입이 달라진다 (스칼라 or 벡터)
r4 = v1[v1%%2 == 0] #TRUE인 것만 가져오게 됨

names(v1) <- c('A', 'B', 'C', 'D', 'E')
# >> Named int로 변하게 되는데 인덱스번호로도 사용할 수 있고 이름으로도 사용할 수 있다는 뜻이다.
r5 = v1['B'] #이름
r6 = v1[2] #인덱스 번호
