install.packages("devtools")
install.packages("R2admb")
library(devtools)
library(R2admb)
devtools::install_github("bbolker/glmmadmb")
library(glmmADMB)
library(tidyverse)

# installing file
data <- read.csv("~/monitoring-federal-criminal-sentences/clean_data/merged_data/96-15.csv")

data2 <- data %>%
  filter(TOTPRISN <= 500) %>%
  filter(MONRACE <= 2) %>%
  filter(DISPOSIT <= 1) %>%
  filter(XFOLSOR < 43)

data3 <- na.omit(data2)

write_csv(data3, "~/monitoring-federal-criminal-sentences/clean_data/ml_data/96-15.csv")

sample3 <- sample_n(data3, 3000)

admb_model <- glmmadmb(formula = TOTPRISN ~ factor(EDUCATN) +
                         factor(TYPE)*factor(MONRACE) +
                         factor(MONRACE) + 
                         factor(TYPE) + (1|DISTRICT) + (1|YEAR),
                         data = sample3, 
                         family = "nbinom",
                         debug = TRUE)
# --- tobit 
install.packages("censReg")
library(censReg)

tobit_model <- censReg(formula = TOTPRISN ~ factor(EDUCATN) +
                         factor(TYPE) * factor(MONRACE) +
                         factor(MONRACE) + XFOLSOR + XCRHISSR + AGE +
                         factor(TYPE), data = data3)
summary(tobit_model)