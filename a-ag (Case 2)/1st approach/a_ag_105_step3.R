> library(TSA)
> setwd("c://temp//")
> options(digits=14)
> dat1 <- read.table("ag105_m30.txt", header=T)
> head(dat1)
> attach(dat1)
> dat2 <- read.table("alfa105_m40.txt", header=T)
> head(dat2)
> attach(dat2)
> epo2=epo/epo1
> lepo=log(epo2)
> t <- 1:105
> plot(t,epo2,type="l")
> epo2a=epo2[2:105]
> epo2b=epo2[1:104]
> ta <- 2:105
> tb <- 1:104
> taa=ta*ta
> tbb=tb*tb
> model <- lm(lepoa~lepob+taa+tbb)
> summary(model)


