x <- seq(1,10)
x
x <- seq(1,10, by=3)
x
x<- NULL
is.null(x)
# 1~3까지 정수를 1행 3열의 1차원으로 표시
x<-array(1:3,dim=c(3))
x
x<-array(1:6,dim=c(2,3))
x

#c함수
x <- c(1,3,5,7,9)
x

# 차트로 영업 실적 비교하기
x<-c(9,15,20,6)
label <-c("영업1팀","영업2팀","영업3팀","영업4팀")
pie(x,labels=label,main="부서별 영업 실적")
barplot(x,names.arg=label,main="부서별 영업 실적",
        col=rainbow(length(x)),xlab="부서",
        ylab="영업실적(억원)",ylim=c(0,25))


h1<-c(4,18,5,8)
h2<-c(9,15,20,6)
h<-rbind(h1,h2)
name<-c("영업1팀","영업2팀","영업3팀","영업4팀")
lbl<-c("2018년","2019년")
barplot(h,main="부서별 영업 실적",
        names.arg=name,xlab="부서",
        ylab="영업실적(억원)",col=c("darkblue","red"),
        legend.text=lbl,
        ylim=c(0,35))



















