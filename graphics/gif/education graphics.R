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


mytheme <- theme(text = element_text(family = "sans", colour = "red1", size = 20),
                 plot.background = element_rect(fill = "oldlace"), 
                 legend.background = element_rect(colour = "black"),
                 legend.position = "bottom",
                 panel.border = element_rect(colour = "black", fill = NA, size = 2))

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

caseload <- tbl_df(caseload)
caseload$Var1 <- as.numeric(caseload$Var1)

prisongg <- ggplot(prison_pop, aes(prison_pop$FY, prison_pop$Total.Population)) + geom_line()

drug <- data %>%
  filter(TYPE == 1)

firearms <- data %>%
  filter(TYPE == 2)

immigration <- data %>%
  filter(TYPE == 3)

violent <- data %>%
  filter(TYPE == 4)

drug <- as_tibble(table(drug$YEAR))
drug$Var1 <- as.numeric(drug$Var1)

firearms <- as_tibble(table(firearms$YEAR))
firearms$Var1 <- as.numeric(firearms$Var1)

immigration <- as_tibble(table(immigration$YEAR))
immigration$Var1 <- as.numeric(immigration$Var1)

violent <- as_tibble(table(violent$YEAR))
violent$Var1 <- as.numeric(violent$Var1)

federal_incarceration <- ggplot() +
                         geom_line(data = caseload, aes(Var1, n, color = "All Cases"), size = 1.5) +
                         geom_line(data = drug, aes(Var1, n, color = "Drug Crimes"), size = 1.5) + 
                         geom_line(data = immigration, aes(Var1, n, color = "Immmigration"), size = 1.5) +
                         geom_line(data = firearms, aes(Var1, n, color = "Gun Violence"), size = 1.5) +
                         geom_line(data = violent, aes(Var1, n, color = "Violent Crimes"), size = 1.5) + 
                         labs(title = "Federal Criminal Caseload Time Series", y = "Frequency", x = "Year", color = NULL) + 
                         coord_cartesian(xlim = c(1996, 2015)) + 
                         mytheme + 
                         scale_color_brewer(palette = "Set1") + 
                         theme(plot.background = element_rect(size=1,linetype="solid",color="black"))
federal_incarceration
