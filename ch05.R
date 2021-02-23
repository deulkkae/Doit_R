exam <- read.csv("csv_exam.csv")

head(exam)

head(exam, 10)

tail(exam)

tail(exam, 10)

View(exam)

dim(exam)

str(exam)

summary(exam)

mpg <- as.data.frame(ggplot2::mpg)

head(mpg)
tail(mpg)
View(mpg) # 창에서 로 데이터 보기
dim(mpg)
str(mpg)

summary(mpg)

df_raw <- data.frame(var1 = c(1, 2, 1),
                     var2 = c(2, 3, 2))
df_raw

install.packages("dplyr") # 데이터를 원하는 형태로 가공할 때 사용하는 패키지
library(dplyr)

df_new <- df_raw # df_raw의 복사본 만들기. 데이터를 변형할 땐 원본보다 복사본을 사용하는 게 좋다!
df_raw

df_new <- rename(df_new, v2 = var2) # 새 이름을 먼저 씀
df_new

mpg_new <- mpg
mpg_new <- rename(mpg_new, city = cty)
mpg_new <- rename(mpg_new, highway = hwy)

mpg_new <- rename(mpg_new, cty = city)
mpg_new <- rename(mpg_new, hwy = highway)

head(mpg_new)

# 파생변수 만들기

df2 <- data.frame(var1 = c(4, 3, 8),
                  var2 = c(2, 6, 1))
df2

df2$var_sum <- df2$var1 + df2$var2 # var_sum이라는 파생변수 생성
df2

df2$var_mean <- df2$var_sum/2 # var_mean이라는 파생변수 생성
df2

mpg$total <- (mpg$cty + mpg$hwy)/2
head(mpg)
mean(mpg$total)

summary(mpg$total) # 평균은 20.15, 중앙값은 20.50
hist(mpg$total)

mpg$test <- ifelse(mpg$total >= 20, "pass", "fail") # 조건문
head(mpg, 20)

table(mpg$test) # 연비 합격 빈도표 생성하기기
library(ggplot2)
qplot(mpg$test) # 연비 합격 빈도 막대 그래프 생성

ifelse(mpg$total >= 30, "A",
       ifelse(mpg$total >= 20, "B", "C")) # 중첩 조건문!!
head(mpg, 20)

table(mpg$grade)
qplot(mpg$grade)

# A, B, C, D 등급 부여하기
ifelse(mpg$total >= 30, "A",
       ifelse(mpg$total >= 25, "B",
              ifelse(mpg$total >= 20, "C", "D")))
head(mpg, 20)

# 분석 도전!!
midwest <- as.data.frame(ggplot2::midwest)
head(midwest, 6)

midwest_new <- midwest
midwest_new

midwest_new <- rename(midwest_new, total = poptotal, asian = popasian)
head(midwest_new, 6)

midwest_new$asian_total <- midwest_new$asian / midwest_new$total
midwest_new
qplot(midwest_new$asian_total)

mean_asian <- mean(midwest_new$asian_total)

midwest_new$asian_scale <- ifelse(midwest_new$asian_total
                                  >= mean_asian, "large", "small")

table(midwest_new$asian_scale)
qplot(midwest_new$asian_scale)
                                  
                                  