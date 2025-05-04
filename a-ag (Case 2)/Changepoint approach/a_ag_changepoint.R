install.packages("changepoint")

> library(changepoint)
> m.data <- read.table("alfa-ag105.txt",header=T)
> head(m.data)
> attach(m.data)
> lepo=log(epo)
> plot(fr,lepo,type="l")
> m.single <- cpt.mean(lepo,method="AMOC")
> plot(m.single,type="l",cpt.col="blue",xlab="index",ylab="ln{ratio of estimated 
  power spectra}",cpt.width=2
