library(datasets)
data(ToothGrowth)

# look at the dataset variables
head(ToothGrowth)

library(ggplot2)
str(ToothGrowth)

##ToothGrowth$dose <- as.factor(ToothGrowth$dose)



q <- ggplot(ToothGrowth, aes(factor(supp), len))
q +geom_boxplot()+facet_grid(.~dose)+labs(title = "plot2")





str(ToothGrowth)

nrow(ToothGrowth)

summary(ToothGrowth)

table(ToothGrowth$dose, ToothGrowth$supp)

tail(ToothGrowth)


fit <- lm(len ~ dose + supp, data=ToothGrowth)
confint(fit)



summary(fit)
