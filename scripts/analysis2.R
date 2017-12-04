Sys.setenv("plotly_username"="hsujohnathan")
Sys.setenv("plotly_api_key"="2cplPJMsNigBrscG9P1a")
install.packages("tidyverse")
install.packages("plotly")
library(readr)
library(ggplot2)
library(plotly)
library(tidyverse)
setwd("H:/monitoring-federal-criminal-sentences")
data <- read.csv("/monitoring-federal-criminal-sentences/clean_data/merged_data/96-15.csv")
table(data$TYPE)

# library = lme

a_group <- data %>%
  filter(MONRACE <= 2) %>%
  filter(AGE < 25) %>%
  filter(EDUCATN < 3) %>%
  filter(MONSEX == 0) %>%
  filter(XCRHISSR <= 2)

ggplot(a_group, aes(x = XFOLSOR, y = TOTPRISN, color = as.factor(MONRACE))) + geom_point() +
       geom_smooth(method = "loess") + coord_cartesian(xlim = c(0, 40), ylim = c(0, 200)) + facet_grid(.~XCRHISSR)
      
p <- plot_ly(a_group, x = ~XFOLSOR, y = ~YEAR, z = ~TOTPRISN, color = ~as.factor(MONRACE), colors = c("red", "blue")) %>%
     layout(rangeslider = list(type = "year"))

library(tidyverse)

# use caret:BoxCoxTrans

install.packages("lme4")
library(lme4)
library(glmmADMB)

data2.lm <- lm(data = data, TOTPRISN ~ YEAR + 
           as.factor(DISTRICT) +
           as.factor(DISPOSIT) + 
           EDUCATN +
           XFOLSOR * XCRHISSR +
           as.factor(CITIZEN) +
           as.factor(MONRACE) +
           as.factor(TYPE) +
           as.factor(booker) +
           as.factor(DISTRICT) * as.factor(TYPE) +
           as.factor(TYPE) * as.factor(MONRACE) +
           AGE)

glmer <- glmer(data = data, TOTPRISN ~ YEAR + 
        as.factor(DISPOSIT) + 
        as.factor(EDUCATN) +
        XFOLSOR * XCRHISSR +
        as.factor(CITIZEN) +
        as.factor(MONRACE) +
        as.factor(TYPE) +
        as.factor(booker) +
        as.factor(TYPE) * as.factor(MONRACE) +
        AGE + (DISTRICT | MONCIRC), family = poisson
      )

summary(glmer)

data$TYPE[data$TYPE > 3 ] <- 0
data$TYPE[]

library(lme4)
install.packages("lme4")
library(tidyverse)
data2 <- data %>%
  filter(TOTPRISN <= 500) %>%
  filter(MONRACE <= 2) %>%
  filter(DISPOSIT <= 1) %>%
  filter(MONSEX < 1) %>%
  filter(XFOLSOR < 43)
  
  # filter(CITIZEN < 4) %>%
    

testing <- sample_n(data2, 10000)

training$CITIZEN[training$CITIZEN == 2] <- 1
training$EDUCATN[training$EDUCATN > 2] <- 3
testing$CITIZEN[testing$CITIZEN == 2] <- 1
testing$EDUCATN[testing$EDUCATN > 2] <- 3
testing$CITIZEN[testing$CITIZEN == 2] <- 1
testing$EDUCATN[testing$EDUCATN > 2] <- 3
testing$TYPE[testing$TYPE == 3] <- 0
testing$TYPE[testing$TYPE == 4] <- 2

data2$CITIZEN[data2$CITIZEN == 2] <- 1
data2$EDUCATN[data2$EDUCATN > 2] <- 3
data2$TYPE[data2$TYPE == 3] <- 0
data2$TYPE[data2$TYPE == 4] <- 2

sampledata4 <- sample_n(data2, 10000)


data2$booker <- as.numeric(data2$YEAR >= 2005)
data2$holder <- as.numeric(data2$YEAR >= 2010)

booker_holder   <- glmer(formula = TOTPRISN ~ 
                   XFOLSOR +
                   factor(TYPE) * factor(MONRACE) +
                   factor(MONRACE) + 
                   factor(TYPE) + 
                   factor(booker) + 
                   factor(holder) +
                   (1 | DISTRICT) + (1 | YEAR), 
                   data = data2, family = "poisson", REML = T)

summary(glmer2) 

lmer2 <- lmer(formula = TOTPRISN ~ 
                  XFOLSOR +
                  XCRHISSR + 
                  AGE + 
                  factor(EDUCATN) +
                  factor(TYPE) * factor(MONRACE) +
                  factor(MONRACE) + 
                  factor(TYPE) + 
                  (1 | DISTRICT) + (1 | YEAR), 
                  data = data2)

lm2 <- lm(formula = log(TOTPRISN) ~ 
            XFOLSOR * XFOLSOR +
            STATMAX * STATMIN +
            XCRHISSR + 
            AGE + 
            factor(EDUCATN) +
            factor(TYPE) * factor(MONRACE) +
            factor(MONRACE) + 
            factor(TYPE), data = data2)

summary(lm2)
testing_results$resultlm[testing_results$resultlm <= 0] <- 0
resultlm <- predict(lm2, testing)
testing_results <- cbind(resultlm, testing)

install.packages("reshape2")
library(reshape2)

test_data_long <- melt(testing_results)

ggplot(testing_results, aes(x = sqrt(XFOLSOR), y = TOTPRISN)) + geom_smooth(method = "loess")

ggplot(testing_results, aes(x = XFOLSOR, y = resultlm)) + geom_smooth(method = "loess")

confusionMatrix(testing_results$result, testing_results$TOTPRISN)

method = library(caret)

u = union(result, testing$TOTPRISN)
t = table(factor(result, u), factor(testing$TOTPRISN, u))
confusionMatrix(t)
                  
                  
                  
                  factor(TYPE) +
                     factor(MONRACE) +
                     factor(DISPOSIT) +
                     factor(CITIZEN) + 
                     factor(MONSEX) +
                     (1 | DISTRICT), 
                     data = sampledata4,
                     family = "poisson", REML = T)


library(caret)


summary(glmer2)
plot(glmer2)
install.packages("sjPlot")
library(sjPlot)

plot_model(model = glmer2, type = "re")


# quantile sorting 
a <- table(data2$DISTRICT)
a_quantiles <- quantile(table(data2$DISTRICT), probs = c(0, .2, .4, .6, .8, 1))

temp <- rep(NA, length(unique(data2$DISTRICT)))
names(temp) <- names(a)

for(i in 1:length(temp)) {
  if(a_quantiles[1] <= a[i] & a[i] < a_quantiles[2]) temp[i] <- 1
  if(a_quantiles[2] <= a[i] & a[i] < a_quantiles[3]) temp[i] <- 2
  if(a_quantiles[3] <= a[i] & a[i] < a_quantiles[4]) temp[i] <- 3
  if(a_quantiles[4] <= a[i] & a[i] < a_quantiles[5]) temp[i] <- 4
  if(a_quantiles[5] <= a[i] & a[i] <= a_quantiles[6]) temp[i] <- 5
}
  
temp <- data.frame(temp)
temp$DISTRICT <- rownames(temp)
data3 <- merge(x = data2, y = temp, by = "DISTRICT")
# -------------------