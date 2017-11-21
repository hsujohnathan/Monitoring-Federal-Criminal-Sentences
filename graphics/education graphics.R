library(tidyverse)
library(ggplot2)
library(readr)
library(gganimate)
library(ggthemes)

theme_set(theme_bw())

setwd("//netid.washington.edu/csde/homes/udrive/monitoring-federal-criminal-sentences/clean_data/merged_data")
data <- read.csv("96-15.csv")

data <- data %>%
  filter(TOTPRISN < 1000) %>%
  filter(!is.na(TYPE)) %>%
  filter(!is.na(EDUCATN))


race_labels <- c('1' = "White Defendants",
                 '2' = "Black Defendants")

case_labels <- c("0" = "Other Cases",
                 "1" = "Drug Crimes",
                 "2" = "Firearms",
                 "3" = "Immigration",
                 "4" = "Violent Crimes")

education_labels <- c("0" = "No Schooling",
                      "1" = "Below High School",
                      "2" = "High School",
                      "3" = "Special Degree",
                      "4" = "College Graduate",
                      "5" = "Advanced/Professional Degree")


mytheme <- theme(text = element_text(family = "serif", colour = "red1"),
                 plot.background = element_rect(fill = "oldlace"), 
                 legend.background = element_rect(colour = "black"),
                 legend.position = "bottom",
                 panel.border = element_rect(colour = "black", fill = NA))

education_gg <- ggplot(data, aes(x = AGE, y = TOTPRISN, frame = as.factor(YEAR), color = as.factor)) + 
  labs(title = "Federal Criminal Sentences by Education", y = "Total Prison Time Sentenced", x = "Age", color = "Race") + guides(guide_legend(title = "Race")) + 
  scale_color_manual(labels = c("White", "Black"), values = c("blue", "red")) +
  coord_cartesian(xlim = c(19,53), ylim = c(0, 150)) +
  facet_grid(.~ as.factor(EDUCATN), labeller = as_labeller(education_labels)) + 
  geom_smooth(method = 'loess')

education_gg <- education_gg + mytheme
education_anime

education_anime <- gganimate(education_gg, interval = 0.4, fps = 4, saver = "gif")

gganimate_save(education_anime, "education.gif", interval = 0.4, fps = 4, saver = "gif")
