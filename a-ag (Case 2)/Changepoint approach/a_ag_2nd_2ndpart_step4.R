> library(TSA)
> setwd("c://temp//")
> options(digits=14)
> dat1 <- read.table("alfa-ag105(2).txt.txt",header=T)
> attach(dat1)
> dat2 <- read.table("alfa-ag105(2)vt.txt",header=T)
> attach(dat2)
> lepo=log(epo2)
> φ=0.7696084
> y1=vt6[1:42]
> fvt=φ*y1
> lepo1=lepo[2:43]
> lepo2=lepo1-fvt
> t <- 2:43
> model <- lm(lepo2~t)
> summary(model)
> tt <- 2:43
> x1=vt6[2:43]
> et=x1-fvt
> hist(et)
> mean(et)
> net=et/sd(et)
> sd(net)
> plot(tt,et,type="l")
> acf(et,type="cor",lag.max=30,main="correlation of residuals et”,  col="red")
> pacf(et,lag.max=30,main="partial correlation of residuals et",col="red")
> plot(tt,net,xlab="index",ylab="normalized residuals",main="uncorrelated normalized residuals for the et",type="l");abline(a=-2,b=0,   col="red");abline(a=2,b=0,col="red");abline(a=0,b=0,lty="dotted")
> qqnorm(et,main="Q-Q plot for the residuals et");qqline(et,col="red")
> shapiro.test(et)

