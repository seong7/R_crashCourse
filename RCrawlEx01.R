#RCrawlEx01.r

setwd("C:\\Rcrawl")
getwd()

install.packages(c("rvest","R6"))

library(rvest)
library(R6)

url_base<-'https://movie.daum.net/moviedb/grade?movieId=133855&type=netizen&page='
all.reviews <- c()
for(page in 1:20){
  url<-paste(url_base,page,sep=,encoding='EUC-KR')
  htxt<-read_html(url)
  #Encoding("EUC-KR")
  table<-html_nodes(htxt, '.review_info')
  content<-html_nodes(table, '.desc_review')
  reviews<-html_text(content)
  if(length(reviews)==0){break}
  print(reviews)
  all.reviews<-c(all.reviews,reviews)
  print(page)
}
write.table(all.reviews, "daum.txt")



