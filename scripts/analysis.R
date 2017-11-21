Sys.setenv("plotly_username"="hsujohnathan")
Sys.setenv("plotly_api_key"="2cplPJMsNigBrscG9P1a")

install.packages("plotly")
library(readr)
library(ggplot2)
library(plotly)
library(tidyverse)
data <- read.csv("clean_data/merged_data/96-15.csv")
table(data$TYPE)

data_2race <- data %>%
  filter(MONRACE <= 2)

type <- lm(data = data_2race, TOTPRISN ~
               as.factor(MONCIRC) +
               as.factor(DISPOSIT) + 
               as.factor(MONSEX) +
               as.factor(EDUCATN) +
               XFOLSOR * XCRHISSR +
               as.factor(CITIZEN) +
               as.factor(MONRACE) +
               as.factor(TYPE) +
               as.factor(TYPE) * as.factor(MONRACE) +
               AGE)

summary(type)

data_2race <- data %>%
  filter(MONRACE <= 2)

data_sample <- sample_n(data_2race, 100000)



race_77 <- lm(TOTPRISN ~ as.factor(MONSEX) + as.factor(MONRACE) + as.factor(EDUCATN) + AGE + as.factor(DISPOSIT) + XFOLSOR, data)

race_68 <- lm(log(TOTPRISN) ~ as.factor(MONSEX) + as.factor(MONRACE) + as.factor(EDUCATN) + AGE + as.factor(DISPOSIT) + XFOLSOR, data_68)
plot(data_77$TOTPRISN, data_77$XFOLSOR) + geom_ab

plot <- plot_ly(data_sample, x = ~TYPE, y = ~XFOLSOR, z = ~XFOLSOR, frame = ~DISTRICT,
                marker = list(color = ~TOTPRISN, colorscale = c("red", "blue"), showscale = TRUE)) %>%
  add_markers() %>%
  layout(scene = list(xaxis = list(title = 'Criminal History'),
                      yaxis = list(title = 'Final Offense Level')))
         
chart_link = plotly_POST(plot, filename="2015 Western Washington", sharing = "public")

plot


summary(data_95_15_1$TOTPRISN)
