# 6-1 데이터 전처리
'''dplyr 함수들
filter() 행 추출
select() 열(변수) 추출
arrange() 정렬
mutate() 변수 추가
summarise() 통계치 산출
group_by() 그룹별로 나누기
left_join() 데이터 합치기(열)
bind_rows() 데이터 합치기(행)'''

# 6-2 조건에 맞는 데이터만 추출하기
library(dplyr)
exam <- read.csv("csv_exam.csv")
exam

# exam에서 class가 1인 경우만 추출해서 출력
exam %>% filter(class == 1)

# %>%는 파이프 연산자, 물길을 연결하는 파이프처럼 함수를 연결한다. ctrl+shft+m 누르면 됨!

exam %>% filter(class == 2)
exam %>% filter(class != 1) # class가 1이 아닌 경우우
exam %>% filter(class != 3)

exam %>% filter(math > 50)
exam %>% filter(math < 50)
exam %>% filter(english >= 80)
exam %>% filter(english <= 80)

# 여러 조건을 충족하는 행 추출하기
# 기호 &은 and를 의미
exam %>% filter(class == 1 & math >= 50)
exam %>% filter(class == 2 & english >= 80)

# 기호 |은 or를 의미
exam %>% filter(math >= 90 | english >= 90)
exam %>% filter(english < 90 | science < 50)

# 1, 3, 5 class에 해당하면 추출
exam %>% filter(class == 1 | class == 3 | class == 5)

# %in%은 변수의 값이 지정한 조건 목록에 해당하는지 확인
exam %>% filter(class %in% c(1, 3, 5)) #class가 1, 3, 5에 해당하면 추출

class1 <- exam %>% filter(class == 1)
class2 <- exam %>% filter(class == 2)

mean(class1$math)
mean(class2$math)

'''
%/% 나눗셈의 몫
%% 나눗셈의 
'''

# 혼자서 해보기 p.133
mpg <- as.data.frame(ggplot2::mpg)
View(mpg)

displ_under_4 <- mpg %>% filter(displ <= 4)
displ_upper_5 <- mpg %>% filter(displ >= 5)

mean(displ_under_4$hwy)
mean(displ_upper_5$hwy)

m_audi <- mpg %>% filter(manufacturer == "audi")
m_toyota <- mpg %>% filter(manufacturer == "toyota")

mean(m_audi$cty)
mean(m_toyota$cty)

m_chevrolet <- mpg %>% filter(manufacturer == "chevrolet")
m_ford <- mpg %>% filter(manufacturer == "ford")
m_honda <- mpg %>% filter(manufacturer == "honda")

mean(m_chevrolet$cty)
mean(m_ford$cty)
mean(m_honda$cty)

m_three <- mpg %>% filter(manufacturer %in% c("chevrolet", "ford", "honda"))
# c() 함수가 변수에 여러 개의 값을 넣는 기능을 하니까, 문자열일 때도 사용할 수 있음
mean(m_three$hwy)

# 6-3 필요한 변수만 추출하기
exam %>% select(math) # math 추출
exam %>% select(english)
exam %>% select(class, math, english)

exam %>% select(-math) # math만 제외하고 추출
exam %>% select(-math, -english)

# filter()와 select() 조합하기
exam %>% filter(class == 1) %>% select(english) # 1반 애들의 영어 점수

# 줄바꿈 예쁘게
exam %>% 
  filter(class == 1) %>% 
  select(english)

exam %>% 
  select(id, math) %>% 
  head # 앞부분 6행까지 추출

exam %>% 
  select(id, math) %>% 
  head(10) # 앞부분 10행까지 추출

# 혼자서 해보기 p. 138
m_suv <- mpg %>% 
  filter(class == "suv")


m_compact <- mpg %>% 
  filter(class == "compact")

mean(m_suv$cty)
mean(m_compact$cty)

# 6-4 순서대로 정렬하기
exam %>% arrange(math) # math 오름차순으로 정렬
exam %>% arrange(desc(math)) # math 내림차순으로 정렬

exam %>% arrange(class, math)

# 혼자서 해보기 p.141
m_audi %>%
  arrange(desc(hwy)) %>%
  head(5)

# 6-5 파생변수 추가하기
exam %>% 
  mutate(total = math + english + science,
         mean = (math + english + science)/3) %>% 
  head

exam %>% 
  mutate(test = ifelse(science >= 60, "pass", "fail")) %>% 
  head

exam %>% 
  mutate(total = math + english + science) %>% 
  arrange(total) %>% 
  head

# 혼자서 해보기 p.144
mpg_copied <- mpg

mpg_copied <- mpg_copied %>% 
  mutate(total = cty + hwy)
mpg_copied

mpg_copied <- mpg_copied %>%
  mutate(total = cty + hwy)
mpg_copied

mpg_copied <- mpg_copied %>%
  mutate(mean = (cty + hwy)/2)
mpg_copied

mpg_copied %>%
  arrange(desc(mean)) %>% 
  head(3)

mpg %>%
  mutate(total = cty + hwy,
          mean = total/2) %>% 
  arrange(desc(mean)) %>% 
  head(3)















