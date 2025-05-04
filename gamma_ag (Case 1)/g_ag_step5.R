> library(TSA)
> setwd("c://temp//")
> options(digits=14)
> dat1 <- read.table("ag108_m30.txt",header=T)
> attach(dat1)
> dat2 <- read.table("gam108_m40.txt",header=T)
> attach(dat2)
> epo2=epo/epo1
> lepo=log(epo2)
> lepo1=lepo[2:108]
> dat3 <- read.table("gam-ag108vt.txt",header=T)
> head(dat3)
> attach(dat3)
> φ=0.901924082
> y1=vt5[2:108]
> z1=vt5[1:107]
> fvt=φ*y1
> lepo2=lepo1-fvt
> t <- 2:108
> model <- lm(lepo2~t+I(t^2)+I(t^3)+I(t^4))
> summary(model)
> pred.frame <- data.frame(lepo2=2:108)
> pp <- predict(model,int="p",newdata=pred.frame)
> fr2=fr[2:108]
> plot(fr2,lepo2,main="predicted intervals for the gam-ag108 case", xlab="frequency",ylab="predicted values",ylim=c(0.35,1.1), type="l");matlines(fr2,pp,lty=c(1,3,3),col="red")

