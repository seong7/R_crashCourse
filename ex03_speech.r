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
# file choose 함 (speech.txt)__ 인코딩:ANSI 설정되어 있어야 한글 안깨짐
text  # 출력문


