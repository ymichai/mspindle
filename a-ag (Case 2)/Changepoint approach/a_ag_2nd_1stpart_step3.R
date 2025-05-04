> library(TSA)
> setwd("c://temp//")
> options(digits=14)
> dat1 <- read.table("alfa-ag105(1).txt", header=T)
> head(dat1)
> attach(dat1)
> lepo=log(epo1)
> t <- 1:62
> plot(t,lepo,type="l")
> lepoa=lepo[2:62]
> lepob=lepo[1:61]
> ta <- 2:62
> tb <- 1:61
> model <- lm(lepoa~lepob+ta+tb)
> summary(model)


