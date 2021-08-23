#apply 계열 함수
#데이터 조작에 편리한 기능 제공, apply 함수가 가장 많이 사용됨
#for문 없이 multi-core 사용으로 빠르게 연산 가능
#split -> apply -> combine 기능 제공, (데이터 분할 -> 함수 적용 -> 재결합)

#apply(input: array, output: array)
#array에 행 또는 열 별로 함수를 적용한 다음 그 결과를 vector 또는 array로 변환

#lapply(input: vector/list, output: list)
#vector, list에 함수를 원소별 적용하여 결과를 list로 변환
#vector로 변환을 위해 unlist 사용

#sapply(input: list or vector, output: vector or array)
#lapply와 유사하지만 결과를 vector, matrix 또는 array로 반환

#tapply(input: list or vector and factor, output: vector or array)
#입력 데이터를 특정 기준으로 묶은 다음 각 그룹마다 주어진 함수를 적용하고 그 결과를 반환

rm(list = ls())
a <- matrix(1:12, nrow = 4)
r1 <- apply(a, 1, sum) #1 = 행 별로, 2= 열 별로
r2 <- apply(a, 2, sum)
r3 <- apply(a, 1, mean)
r4 <- apply(a, 2, max)

rm(list = ls())
a <- list(c(1, 2, 3), seq(1, 9, 2), seq(2, 8, 2))
r1 <- lapply(a, sum) #원소별로 적용
r2 <- unlist(r1)
r3 <- sapply(a, sum) #입력은 list, 출력은 vector
r4 <- lapply(c(1, 2, 3), function(x){ x*2 - 1 })

rm(list = ls())
a <- c(1, 11, 2, 22, 3, 33, 4, 44)
b <- rep(c(TRUE, FALSE), 4)
r1 <- tapply(a, a<=10, sum)
r2 <- tapply(a, c(1,1,2,2,3,3,4,4), sum)
r3 <- tapply(iris$Sepal.Length, iris$Species, mean)
r4 <- tapply(a, b, sum)
