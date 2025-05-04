> library(TSA)
> setwd("c://temp//")
> options(digits=14)
> dat1 <- read.table("alfa-ag105(1).txt.txt",header=T)
> attach(dat1)
> lepo=log(epo1)
> dat2 <- read.table("alfa-ag105(1)vt.txt",header=T)
> attach(dat3)
> φ=0.5402325
> y1=vt5[1:61]
> fvt=φ*y1
> lepo1=lepo[2:62]
> lepo2=lepo1-fvt
> t <- 2:62
> model <- lm(lepo2~t)
> summary(model)
> tt <- 2:62
> x1=vt5[2:62]
> et=x1-fvt
> hist(et)
> mean(et)
> net=et/sd(et)
> sd(net)
> plot(tt,et,type="l")
> acf(et,type="cor",lag.max=30,main="correlation of residuals et”,  col="red")
> pacf(et,lag.max=30,ylim=c(-0.5,0.5),main="partial correlation of 
residuals et",col="red")
> plot(tt,net,xlab="index",ylab="normalized residuals",main="uncorrelated normalized residuals for the et",type="l");abline(a=-2,b=0, col="red");abline(a=2,b=0,col="red");abline(a=0,b=0,lty="dotted")
> qqnorm(et,main="Q-Q plot for the residuals et");qqline(et,col="red")
> shapiro.test(et)



