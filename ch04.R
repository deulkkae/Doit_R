english <- c(90, 80, 60, 70)
english

math <- c(50, 60, 100, 20)
math

df_midterm <- data.frame(english, math)
df_midterm

class <- c(1, 1, 2, 2)
class

df_midterm <- data.frame(english, math, class)
df_midterm

mean(df_midterm$english)

mean(df_midterm$math)

df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))

df_midterm

df.fruits <- data.frame("제품" = c("사과", "딸기", "수박"),
                        "가격" = c(1800, 1500, 3000),
                        "판매량" = c(24, 38, 13))
df.fruits

mean(df.fruits$"가격")
mean(df.fruits$"판매량")

install.packages("readxl")
library(readxl)

df_exam <- read_excel("excel_exam.xlsx")
df_exam

mean(df_exam$english)
mean(df_exam$science)

df_exam_novar <- read_excel("excel_exam_novar.xlsx", col_names = F)
df_exam_novar

df_exam_sheet <- read_excel("excel_exam_sheet.xlsx", sheet = 3)
df_exam_sheet$class

df_csv_exam <- read.csv("csv_exam.csv", stringsAsFactors = F)
df_csv_exam

write.csv(df_midterm, file = "df_midterm.csv")

saveRDS(df_midterm, file = "df_midterm.rds")

rm(df_midterm)

df_midterm

df_midterm <- readRDS("df_midterm.rds")
df_midterm

