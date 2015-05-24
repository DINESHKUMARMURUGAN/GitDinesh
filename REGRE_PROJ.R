data(mtcars)

summary(mtcars)

?factor


mtcars$cyl <- factor(mtcars$cyl)
mtcars$vs <- factor(mtcars$vs)
mtcars$gear <- factor(mtcars$gear)
mtcars$carb <- factor(mtcars$carb)
mtcars$am <- factor(mtcars$am,labels=c('Automatic','Manual'))

#Result shown in the Appendix
summary(mtcars)

install.packages("nortest")


library(nortest)
ad.test(mtcars$mpg)
cvm.test(mtcars$mpg)

newdata <- mtcars[order(mpg),]

newd <- sort(mtcars$mpg)
hist(mtcars$mpg)

ggplot(mtrow, aes(x=mtrow$mtcars.mpg)) + geom_histogram(binwidth=3)
data(mtcars)
sort(cor(mtcars)[1,])

mtrow<-data.frame(mtcars$mpg)

hist_cut <- ggplot(dfRowMeans,aes(x = dfRowMeans))
hist_cut  + geom_histogram()

newd
mtcars$mpg

ad.test(rnorm(100, mean = 5, sd = 3))
shapiro.test(mtcars$mpg)



t.test(mtcars$mpg ~ mtcars$am)


d <- density(mtcars$mpg)
plot(d, xlab = "MPG", main ="Density Plot of MPG")

pairs(mtcars,panel=panel.smooth,main="Pair Graph of Automobiles Road Tests (Motor Trend)")


library(ggplot2)

p <- ggplot(mtcars, aes(disp, mpg,color = am)) + geom_smooth(method=lm)   
p + geom_point() + ggtitle("Scatter Plot of MPG vs Weight by Transmission") + facet_wrap(~am)



p<- ggplot()+geom_point(data=mtcars,aes(disp,mpg))+ 
geom_point(data=mtcars,aes(hp,mpg))+ 
    facet_grid(~am)
p



p <- ggplot(data = mtcars, aes(x = disp, y = mpg)) + geom_point()
p + facet_wrap(~am)
