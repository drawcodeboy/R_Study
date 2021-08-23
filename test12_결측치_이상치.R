#단순 대치법(Single Imputation)

#완전히 응답한 개체분석 > 불완전 자료는 무시 >> 효율성 상실, 통계적 추론의 타당성 문제 존재
#평균 대치법 > 데이터의 평균으로 결측값 대치 >> 비조건부 평균 대치: 관측데이터 평균, 조건부 평균 대치: 회귀분석
#단순확률 대치법 > 표준오차의 과소추정문제를 보완 > Hot-deck, nearest neighbor 방법 등이 있음

#다중 대치법

#단순 대치법을 한 번이 아닌 m번 수행하여 m개의 가상적 완전 자료를 만듬
#추정량 표준오차의 과소추정 또는 계산의 난해성 문제를 가지고 있음

#결측치 인식 함수
#is.na(x), complete.cases(x) > 행 별로 결측치가 없으면 TRUE, x[!complete.cases(x), ] > 결측치 행만 추출
#na.omit(x) 결측치(NA)가 있는 행 전체 삭제

rm(list = ls())
data("airquality")
colnames(airquality) <- tolower(colnames(airquality))

r1 <- is.na(airquality$ozone)
r2 <- sum(r1) #TRUE가 37개 > 결측치(NA)가 37개라는 뜻
r3 <- table(is.na(airquality$ozone)) #TRUE가 37개 > 결측치(NA)가 37개라는 뜻
r4 <- apply(airquality, 2, function(x){sum(is.na(x))})

air_na <- airquality[!complete.cases(airquality), ]
air_com <- airquality[complete.cases(airquality), ]

r5 <- na.omit(airquality)

#이상값 (Outlier)
#의도하지 않게 잘못 입력된 경우 (bad data)
#분석 목적에 부합되지 않아 제거해야 하는 경우
#의도되지 않은 현상이지만 분석에 포함해야 하는 경우

#이상값 판단
#ESD: 평균으로부터 3 * 표준편차 밖의 값
#boxplot 사용: IQR * 1.5 밖의 값
#summary() 사용: 평균, 중앙값, IQR을 보고 판단함

#이상값 처리
#이상값도 분석 대상이 될 수 있어 무조건 삭제는 안 됨