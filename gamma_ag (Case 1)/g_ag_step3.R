> library(TSA)
> setwd("c://temp//")
> options(digits=14)
> dat1 <- read.table("ag108_m30.txt", header=T)
> head(dat1)
> attach(dat1)
> dat2 <- read.table("gam108_m40.txt", header=T)
> head(dat2)
> attach(dat2)
> epo2=epo/epo1
> lepo=log(epo2)
> t <- 1:108
> plot(t,lepo,type="l")
> lepoa=lepo[2:108]
> lepob=lepo[1:107]
> ta <- 2:108
> t1a=ta
> t2a=t1a*ta
> t3a=t2a*ta
> t4a=t3a*ta
> model <- lm(lepoa~lepob+t1a+t2a+t3a+t4a)
> summary(model)

