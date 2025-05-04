> library(TSA)
> setwd("c://temp//")
> options(digits=14)
> dat1 <- read.table("alfa-ag105(1).txt",header=T)
> attach(dat1)
> lepo1l=epo1[2:62]
> dat2 <- read.table("alfa-ag105(1)vt.txt",header=T)
> head(dat2)
> attach(dat2)
> φ=0.5402325
> y1=vt5[2:62]
> fvt=φ*y1
> lepo2=lepo1-fvt
> t <- 2:62
> model <- lm(lepo2~t)
> summary(model)
> pred.frame <- data.frame(lepo2=2:62)
> pp <- predict(model,int="p",newdata=pred.frame)
> fr2=fr1[2:62]
> plot(fr2,lepo2,main="predicted intervals for the alfa-ag105(1) case", xlab="frequency",ylab="predicted values",type="l");matlines(fr2,pp,lty=c(1,3,3),col="red")





