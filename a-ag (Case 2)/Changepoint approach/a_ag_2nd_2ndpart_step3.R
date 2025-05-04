> library(TSA)
> setwd("c://temp//")
> options(digits=14)
> dat1 <- read.table("alfa-ag105(2).txt", header=T)
> head(dat1)
> attach(dat1)
> lepo=log(epo2)
> t <- 1:43
> plot(t,lepo,type="l")
> lepoa=lepo[2:43]
> lepob=lepo[1:42]
> ta <- 2:43
> tb <- 1:42
> model <- lm(lepoa~lepob+ta+tb)
> summary(model)
