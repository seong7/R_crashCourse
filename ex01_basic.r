x <- seq(1,10)
x
x <- seq(1,10, by=3)
x
x<- NULL
is.null(x)
# 1~3���� ������ 1�� 3���� 1�������� ǥ��
x<-array(1:3,dim=c(3))
x
x<-array(1:6,dim=c(2,3))
x

#c�Լ�
x <- c(1,3,5,7,9)
x

# ��Ʈ�� ���� ���� ���ϱ�
x<-c(9,15,20,6)
label <-c("����1��","����2��","����3��","����4��")
pie(x,labels=label,main="�μ��� ���� ����")
barplot(x,names.arg=label,main="�μ��� ���� ����",
        col=rainbow(length(x)),xlab="�μ�",
        ylab="��������(���)",ylim=c(0,25))


h1<-c(4,18,5,8)
h2<-c(9,15,20,6)
h<-rbind(h1,h2)
name<-c("����1��","����2��","����3��","����4��")
lbl<-c("2018��","2019��")
barplot(h,main="�μ��� ���� ����",
        names.arg=name,xlab="�μ�",
        ylab="��������(���)",col=c("darkblue","red"),
        legend.text=lbl,
        ylim=c(0,35))



















