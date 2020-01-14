#ex02.r

# 외부라이브러리 설치 방법 (인터넷 이용함)
install.packages("wordcloud")
library("wordcloud")
   # wordcloud : 단어들을 수치에따라 크기별로 
   #             구름처럼 나타냄

word <- c("부산광역시", "부산진구", "연제구")
fre <- c(1024, 120, 85) # 부산광역시 : 1024 (가장 큰값)
wordcloud(word, fre, colors= "blue")
  # ("부산광역시"가 가장 크게 출력됨)

wordcloud(word, fre, colors="blue")
wordcloud(word, fre, random.order = F, random.color=F,
          color=rainbow(length(word)))