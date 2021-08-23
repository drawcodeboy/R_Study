#matrix(행렬)
#데이터의 형태가 2차원으로 행(row)과 열(column)으로 구성
#하나의 데이터 유형만 가능, 역행렬은 solve()로 구함

#행렬 생성 함수
#matirx(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)
#rbind(vectors or matrices), cbind(vectors or matrices)
#byrow = FALSE면 열방향(default도 열방향), TURE > 행방향을 우선으로 채우게 됨

rm(list = ls())
m1 = matrix(seq(1, 10), nrow = 5, byrow = TRUE)
m2 = matrix(seq(1, 6), ncol = 3)
m3 = rbind(seq(1, 3), seq(4, 6), seq(7, 10)) # row bind
#각 seq길이가 다를 때, number of columns of result is not a multiple of vector length
m4 = cbind(seq(1, 3), seq(4, 6)) # column bind

#matrix 인덱싱
rm(list=ls())
m <- matrix(seq(1, 12), nrow = 4, ncol = 3)
m1 <- m[2, 3]
m2 <- m[3, ]
m3 <- m[, -2]
m4 <- m[c(2, 3), 2]
m5 <- m[c(TRUE, FALSE, FALSE, TRUE), ]

rm(list = ls())
a1 = array(1:12, dim = c(3,2,2))
a2 = array(1:6, dim=c(2, 3))
