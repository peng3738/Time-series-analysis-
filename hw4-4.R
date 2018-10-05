da=read.table("Downloads/time series analysis/m-ko-6111.txt",header=T)
lre=log(da$ko+1)*100
source("Downloads/time series analysis/Tgarch11.R")
m1=Tgarch11(lre)
names(m1)
at=m1$residuals
sigt=m1$volatility
resi=at/sigt
Box.test(resi,lag=10,type='Ljung')
Box.test(resi,lag=20,type='Ljung')
Box.test(resi^2,lag=10,type='Ljung')
Box.test(resi^2,lag=20,type='Ljung')