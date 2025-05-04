> library(TSA)
> setwd("c://temp//")
> options(digits=14)
> dat1 <- read.table("alfa-ag105(2).txt",header=T)
> attach(dat1)
> lepo=log(epo2)
> lepo1=lepo[2:43]
> dat2 <- read.table("alfa-ag105(2)vt.txt",header=T)
> head(dat2)
> attach(dat2)
> φ=0.7696084
> y1=vt6[2:43]
> fvt=φ*y1
> lepo2=lepo1-fvt
> t <- 2:43
> model <- lm(lepo2~t)
> summary(model)
> pred.frame <- data.frame(lepo2=2:43)
> pp <- predict(model,int="p",newdata=pred.frame)
> fr3=fr2[2:43]
> plot(fr3,lepo2,main="predicted intervals for the alfa-ag105(2) cas e", xlab="frequency",ylab="predicted values",ylim=c(-0.50,-0.28), type="l");matlines(fr3,pp,lty=c(1,3,3),col="red")

