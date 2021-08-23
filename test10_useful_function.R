#paste, substr, split, subset, select

#is.(numeric, logical, character, integer, double, factor, null, na)
#length, nrow, NROW

rm(list = ls())
number <- 1:5
alphabet <- c('a', 'b', 'c')
paste(number, alphabet)

fruit <- c('apple', 'banana', 'orange')
substr(fruit, 1, 2)

r1 <- split(iris, iris$Species)

subset(iris, subset = Species=='setosa' & Sepal.Length > 5.5)

subset(iris, select=c(Sepal.Length, Species))

subset(iris, subset = Species=='setosa' & Sepal.Length > 5.5,
       select= -c(Sepal.Length, Species)) # 같이 사용 할 수 있음
