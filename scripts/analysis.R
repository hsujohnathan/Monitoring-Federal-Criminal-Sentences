Sys.setenv("plotly_username"="hsujohnathan")
Sys.setenv("plotly_api_key"="2cplPJMsNigBrscG9P1a")

library(readr)
library(ggplot2)
library(plotly)
library(tidyverse)
data <- read_csv("clean_data/merged_data/96-15.csv")

data <- data %>%
  filter(YEAR != 2005)

data_postbooker_2006 <- data %>%
  filter(YEAR >= 2006) 

data$booker <- as.numeric(data$YEAR >= 2005)

table(data$DISTRICT)

booker <- lm(data = data, TOTPRISN ~ as.factor(booker) + as.factor(MONCIRC) + XFOLSOR * XCRHISSR + as.factor(booker) * XFOLSOR + as.factor(CITIZEN) * as.factor(booker) + as.factor(MONSEX) + as.factor(MONRACE) * as.factor(booker) + as.factor(EDUCATN) + AGE + as.factor(DISPOSIT))

postbooker <- lm(data = data_postbooker, TOTPRISN ~ YEAR + as.factor(booker) + as.factor(MONCIRC) + DISTRICT + XFOLSOR * XCRHISSR + as.factor(CITIZEN) + as.factor(MONSEX) + as.factor(MONRACE) + as.factor(EDUCATN) + AGE + as.factor(DISPOSIT))


summary(booker)
summary(postbooker)
ggplot(data = data_68, aes(y = TOTPRISN, x = XFOLSOR * XCRHISSR)) +  geom_smooth(method = "loess", size = 0.5)


race_77 <- lm(TOTPRISN ~ as.factor(MONSEX) + as.factor(MONRACE) + as.factor(EDUCATN) + AGE + as.factor(DISPOSIT) + XFOLSOR, data)

race_68 <- lm(log(TOTPRISN) ~ as.factor(MONSEX) + as.factor(MONRACE) + as.factor(EDUCATN) + AGE + as.factor(DISPOSIT) + XFOLSOR, data_68)
plot(data_77$TOTPRISN, data_77$XFOLSOR) + geom_ab

plot <- plot_ly(data_77, x = ~XFOLSOR, y = ~XCRHISSR, z = ~TOTPRISN,
                color = ~MONRACE, colors = c('#BF382A', '#0C4B8E', '#FFE1A1')) %>%
  add_markers() %>%
  layout(scene = list(xaxis = list(title = 'Offense Level'),
                      yaxis = list(title = 'History'),
                      zaxis = list(title = 'Prison time')))
chart_link = plotly_POST(plot, filename="2015 Western Washington", sharing = "public")


data_95_15_1 <- data_95_15

ggplot(data_prebooker, aes(log(XFOLSOR * XCRHISSR),log(TOTPRISN))) + geom_point(colour = "black") + geom_smooth(method='lm')


hist(data_95_15_1$TOTPRISN)
hist(data_95_15_2$TOTPRISN)

summary(data_95_15_1$TOTPRISN)
