> library(TSA)
> setwd("c://temp//")
> options(digits=14)
> dat1 <- read.table("ag178_m30.txt", header=T)
> head(dat1)
> attach(dat1)
> dat2 <- read.table("alf178_m40.txt", header=T)
> head(dat2)
> attach(dat2)
> epo2=epo/epo1
> lepo=log(epo2)
> t <- 1:178
> plot(t,lepo,type="l")
> lepoa=lepo[3:178]
> lepob=lepo[2:177]
> lepoc=lepo[1:176]
> ta <- 3:178
> t1a=ta
> t2a=t1a*ta
> t3a=t2a*ta
> t4a=t3a*ta
> model <- lm(lepoa~lepob+lepoc+t1a+t2a+t3a+t4a)
> summary(model)


