#ex03_speech.r

# 외부 라이브러리 설치
install.packages("KoNLP")
install.packages("RColorBrewer")
install.packages("wordcloud")
library("KoNLP")
library("RColorBrewer")
library("wordcloud")

useSejongDic() #한글 '세종사전' 로딩
pal2<-brewer.pal(8, "Dark2")
text<-readLines(file.choose())
# file.choose() : 파일 선택함 (speech.txt)__ 인코딩:ANSI 설정되어 있어야 한글 안깨짐
# readLines() : line 단위로 파일을 읽어냄
#text  # 출력문

noun <- sapply(text, extractNoun, USE.NAMES = F)
#각 행별로 명사 추출
#noun

noun2 <- unlist(noun)
#추출된 명사들을 하나의 리스트로 통합시킴
#noun2

word_count <- table(noun2)
#단어들의 빈도를 확인 
#word_count

#단어들을 빈도수의 내림차순으로 정렬 (상위 10개)
head(sort(word_count, decreasing = TRUE), 10)

#wordcloud function 사용해 시각화
wordcloud(names(word_count), freq = word_count,
          scale = c(6, 0, 3), min.freq = 5,
          random.order = F, rot.per=.1,
          colors = pal2)
