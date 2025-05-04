> library(TSA)
> setwd("c://temp//")
> options(digits=14)
> dat1 <- read.table("ag108_m30.txt.txt",header=T)
> attach(dat1)
> dat2 <- read.table("gam108_m40.txt",header=T)
> attach(dat2)
> epo2=epo/epo1
> lepo=log(epo2)
> dat3 <- read.table("gam-ag108vt.txt",header=T)
> attach(dat3)
> φ=0.901924082
> y1=vt5[1:107]
> fvt=φ*y1
> lepo1=lepo[2:108]
> lepo2=lepo1-fvt
> t <- 2:108
> model <- lm(lepo2~t+I(t^2)+I(t^3)+I(t^4))
> summary(model)
> tt <- 2:108
> x1=vt5[2:108]
> et=x1-fvt
> hist(et)
> mean(et)
> net=et/sd(et)
> sd(net)
> plot(tt,et,type="l")
> acf(et,type="cor",lag.max=30,main="uncorrelated residuals for the gam-ag108 case",col="red")
> acf(et,type="cor",lag.max=30,main="correlation of residuals et”, col="red")
> pacf(et,lag.max=30,ylim=c(-0.5,0.5),main="partial correlation of residuals et",col="red")
> plot(tt,net,xlab="index",ylab="normalized residuals",main="uncorrelated normalized residuals for the et",type="l");abline(a=-2,b=0, col="red");abline(a=2,b=0,col="red");abline(a=0,b=0,lty="dotted")
> qqnorm(et,main="Q-Q plot for the residuals et");qqline(et,col="red")
> shapiro.test(et)

