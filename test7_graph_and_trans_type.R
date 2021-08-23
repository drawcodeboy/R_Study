#그래프
#산점도, plot() = 2개 수치형 변수의 상관 관계 알아보기
#산점도 행렬, pairs() = 여러 개의 변수 관계 알아보기
#상자그림, boxplot() = 이상치 존재 확인, IQR 길이(3 - 1), 최소, 최대, 1사분위, 3사분위, 중위값 확인 NA 제거하고 그려짐
#히스토그램, hist() = 연속형 수치에 적합 히스토그램의 사각형
#막대그래프, barplot() = 명목형 변수의 비도에 활용, 막대 사이가 끊겨 있는 모양
#그래프의 결과가 통계학적인 유의미를 갖는 것은 아님

#데이터 형변환
rm(list = ls()) 
r1 <- as.integer(3.14) #소수점 아래 절삭
r2 <- as.numeric('abc')
r3 <- as.numeric(TRUE)
r4 <- as.logical(0.1)
r5 <- as.logical(0)

rm(list = ls())
r1 <- as.Date('2021-5-1')
#r2 <- as.Date('3/14/2021') #문자열이 표준서식을 따르지 않습니다
r3 <- as.Date('3/14/2021', format = '%m/%d/%y')
r4 <- format(Sys.Date()) #format은 문자열 반환
r5 <- format(Sys.Date(), format = '%m/%d/%Y') # %y > 연도 두 글자, %Y > 연도 네 글자

rm(list = ls())
r1 <- format(Sys.Date(), '%a') # %a는 요일에 관한 정보
r2 <- format(Sys.Date(), '%b') # %b는 월에 관한 정보
r3 <- format(Sys.Date(), '%y')
r4 <- format(Sys.Date(), '%Y')
