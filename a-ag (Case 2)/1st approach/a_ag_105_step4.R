> library(TSA)
> setwd("c://temp//")
> options(digits=14)
> dat1 <- read.table("ag105_m30.txt.txt",header=T)
> attach(dat1)
> dat2 <- read.table("alfa105_m40.txt",header=T)
> attach(dat2)
> epo2=epo/epo1
> lepo=log(epo2)
> dat3 <- read.table("alfa-ag105lvt.txt",header=T)
> attch(dat3)
> φ=0.792667455
> y1=lvt7[1:104]
> fvt=φ*y1
> epo21=epo2[2:105]
> epo22=epo21-fvt
> t <- 2:105
> model <- lm(epo22~I(t^2))
> summary(model)
> tt <- 2:105
> x1=lvt7[2:105]
> et=x1-fvt
> hist(et)
> mean(et)
> net=et/sd(et)
> sd(net)
> plot(tt,et,type="l")
> acf(et,type="cor",lag.max=30,main="correlation of residuals et",  col="red")
> pacf(et,lag.max=30,ylim=c(-0.5,0.5),main="partial correlation of residuals et",col="red")
> plot(tt,net,xlab="index",ylab="normalized residuals",main="uncorrelated normalized residuals for the et",type="l");abline(a=-2,b=0,col="red");abline(a=2,b=0,col="red");abline(a=0,b=0,lty="dotted")
> qqnorm(et,main="Q-Q plot for the residuals et");qqline(et,col="red")
> shapiro.test(et)



