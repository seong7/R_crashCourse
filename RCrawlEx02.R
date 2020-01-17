getwd()
setwd("C:/Rcrawl")
getwd()

install.packages(c('rvest','R6'))
library(rvest)
library(R6)


url_base <- "https://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=187940&type=after&isActualPointWriteExecute=false&isMileageSubscriptionAlready=false&isMileageSubscriptionReject=false&page="
all.reviews <- c()
for(page in 1:20){
  url <- paste(url_base, page, sep='',encoding='euc-kr')
  htxt <- read_html(url)
  table <- html_nodes(htxt,'.score_reple')
  content <- html_nodes(table,'._unfold_ment')
  reviews <- html_text(content)
  print(reviews)
  #if(length(reviews)==0){break}
  all.reviews <- c(all.reviews,reviews)
  print(page)
}
write.table(all.reviews, "naver.txt")

