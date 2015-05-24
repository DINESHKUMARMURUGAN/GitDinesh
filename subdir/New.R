library(ggplot2)

n <- 40
numsim <- 1000
lamdaT <- 0.2


meanT <- 1/lamdaT

varT <- (1/lamdaT^2) * (1/n)

sdT <- ((1/lamdaT) * (1/sqrt(n)))



dataset<-matrix(rexp(n*numsim,rate = lamdaT),numsim)


RowMeanfordataset <- apply(dataset,FUN = mean,MARGIN = 1)

CalculatedMean <- mean(RowMeanfordataset)
CalculatedSd <- sd(RowMeanfordataset)


dfRowMeans<-data.frame(RowMeanfordataset)

hist_cut <- ggplot(dfRowMeans,aes(x = RowMeanfordataset))

hist_cut <- hist_cut + geom_histogram(aes(y = ..density..),binwidth = lamdaT)

hist_cut <- hist_cut + labs(title="Density of 40 Numbers", x="Mean of 40 Selections", y="Density")

hist_cut <- hist_cut + geom_vline(xintercept=CalculatedMean,size=1.0, color="green")

hist_cut <- hist_cut + stat_function(fun=dnorm,args=list(mean=CalculatedMean, sd=CalculatedSd),color = "blue", size = 1.0)

hist_cut <- hist_cut + geom_vline(xintercept=meanT,size=1.0,color="white",linetype = "longdash")

hist_cut <- hist_cut + stat_function(fun=dnorm,args=list(mean=meanT, sd=sqrt(varT)),color = "red", size = 1.0)

hist_cut

