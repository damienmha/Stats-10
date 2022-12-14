#Stats 10 Final Project
# By Antwan Adams, Sarah Wang, Damien Ha, Anita Wong

covid <- read.csv("Covid_project_data.csv", check.names = FALSE)

mean(covid$Population)
sd(covid$Population)
mean(covid$`Cumulative cases`)
sd(covid$`Cumulative cases`)
plot(covid$Population, covid$`Cumulative cases`, 
     main = "Population vs. Cumulative Covid Cases", xlab = "Population", ylab = "Cases",
     pch = 19, cex = 0.5, col = 4)

lm <- lm(covid$`Cumulative cases` ~ covid$Population)
abline(lm, col = 2, lwd = 2)
summary(lm)


plot(lm$residuals ~ covid$Population, main = "Residuals Plot", 
     xlab = "Population", ylab = "Linear Model Residuals", pch = 19, cex = 0.5, col = 4) 
abline(a = 0, b = 0, col = "red", lwd = 2)

cor(covid$`Cumulative cases` ~ covid$Population)





