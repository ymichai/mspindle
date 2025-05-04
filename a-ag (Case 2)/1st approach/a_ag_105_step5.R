> library(TSA)
> setwd("c://temp//")
> options(digits=14)
> dat1 <- read.table("ag105_m30.txt",header=T)
> attach(dat1)
> dat2 <- read.table("alfa105_m40.txt",header=T)
> attach(dat2)
> epo2=epo/epo1
> lepo=log(epo2)
> lepo1=lepo[2:105]
> dat3 <- read.table("alfa-ag105lvt.txt",header=T)
> head(dat3)
> attach(dat3)
> φ=0.792667455
> y1=lvt7[2:105]
> fvt=φ*y1
> epo21=epo2[2:105]
> epo22=epo21-fvt
> t <- 2:105
> model <- lm(epo22~I(t^2))
> summary(model)
> pred.frame <- data.frame(epo22=2:105)
> pp <- predict(model,int="p",newdata=pred.frame)
> fr2=fr[2:105]
> plot(fr2,lepo2,main="predicted intervals for the alfa-ag105 case", xlab="frequency",ylab="predicted values",ylim=c(0.5,0.8), type="l");matlines(fr2,pp,lty=c(1,3,3),col="red")




