> library(TSA)
> setwd("c://temp//")
> options(digits=14)
> dat1 <- read.table("ag178_m30.txt",header=T)
> attach(dat1)
> dat2 <- read.table("alf178_m40.txt",header=T)
> attach(dat2)
> epo2=epo/epo1
> lepo=log(epo2)
> lepo1=lepo[3:178]
> dat3 <- read.table("alf-ag178vt.txt",header=T)
> head(dat3)
> attach(dat3)
> φ1=1.113922025
> φ2=-0.228611661
> y1=vt7[2:177]
> z1=vt7[1:176]
> fvt=φ1*y1+φ2*z1
> lepo2=lepo1-fvt
> t <- 3:178
> model <- lm(lepo2~t+I(t^2)+I(t^3)+Ι(t^4))
> summary(model)
> fvt=φ1*y1+φ2*z1
> pred.frame <- data.frame(lepo2=3:178)
> pp <- predict(model,int="p",newdata=pred.frame)
> fr2=fr[3:178]
> plot(fr2,lepo2,main="predicted intervals for the alf-ag178 case", xlab="frequency",ylab="predicted values",ylim=c(0.18,0.6), type="l");matlines(fr2,pp,lty=c(1,3,3),col="red")



