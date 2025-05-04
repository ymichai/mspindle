> library(TSA)
> setwd("c://temp//")
> options(digits=14)
> dat1 <- read.table("ag178_m30.txt.txt",header=T)
> attach(dat1)
> dat2 <- read.table("alf178_m40.txt",header=T)
> attach(dat2)
> epo2=epo/epo1
> lepo=log(epo2)
> t <- 1:178
> dat3 <- read.table("alf-ag178vt.txt",header=T)
> attach(dat3)
> φ1=1.113922025
> φ2=-0.228611661
> y1=vt7[2:177]
> z1=vt7[1:176]
> fvt=φ1*y1+φ2*z1
> lepo2=lepo1-fvt
> t <- 3:178
> model <- lm(lepo2~t+I(t^2)+I(t^3)+I(t^4))
> summary(model)
> tt <- 3:178
> x1=vt7[3:178]
> et=x1-fvt
> hist(et)
> mean(et)
> net=et/sd(et)
> sd(net)
> plot(tt,et,type="l")
> acf(et,type="cor",lag.max=30,main="uncorrelated residuals for the alf-ag178 case",col="red")
> acf(et,type="cor",lag.max=30,main="correlation of residuals et”,  col="red")
> pacf(et,lag.max=30,ylim=c(-0.3,0.3),main="partial correlation of residuals et",col="red")
> plot(tt,net,xlab="index",ylab="normalized residuals",main="uncorrelated normalized residuals for the et",type="l");abline(a=-2,b=0,col="red");abline(a=2,b=0,col="red");abline(a=0,b=0,lty="dotted")
> qqnorm(et,main="Q-Q plot for the residuals et");qqline(et,col="red")
> shapiro.test(et)



