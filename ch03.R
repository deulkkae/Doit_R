a <- 1
a

b <- 2
b

c <- 3
c

d <- 3.5
d

a+b
a+b+c
4/b
5*b

var1 <- c(1, 2, 5, 7, 8)
var1
var2 <- c(1:5)
var2
var3 <- seq(1, 5)
var3
var4 <- seq(1, 10, by = 2)
var4
var5 <- seq(1, 10, by = 3)
var5
var1
var1+2
str4 <- c("a", "b", "c")
str4
str5 <- c("Hello!", "World", "is", "good!")
str5

x <- c(1, 2, 3)
x

mean(x)
max(x)
min(x)

paste(str5, collapse = " ")

x_mean <- mean(x)
x_mean

str5_paste <- paste(str5, collapse = " ")
str5_paste

install.packages("ggplot2")
library(ggplot2)

x <- c("a", "a", "b", "c")
x
qplot(x)

qplot(data = mpg, x = hwy)

qplot(data = mpg, x = drv, y = hwy)

qplot(data = mpg, x = drv, y = hwy, geom = "line")

qplot(data = mpg, x = drv, y = hwy, geom = "boxplot")

qplot(data = mpg, x = drv, y = hwy, geom = "boxplot", colour = drv)

?qplot

aa <- 80
bb <- 60
cc <- 70
dd <- 50
ee <- 90

mean(aa, bb, cc, dd, ee) # 이거는 왜 80이 나오는가?
score <- c(aa, bb, cc, dd, ee)
mean(score)

?mean

str1 <- "a"
str1

str2 <- "text"
str2

str3 <- "Hello World!"
str3

str4 <- c("a", "b", "c")
str4

str5 <- c("Hello!", "World", "is", "good!")
str5

paste(str5, collapse = " ")

x <- c(1, 2, 3)
x_mean <- mean(x)
x_mean

str5_paste <- paste(str5, collapse = " ")
str5_paste

y <- c("a", "a", "b", "c")
y

qplot(y)

qplot(data = mpg, x = hwy)
qplot(data = mpg, x = cty)
qplot(data = mpg, x = drv, y = hwy)
qplot(data = mpg, x = drv, y = hwy, geom = "line")
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot")
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot", colour = drv)

