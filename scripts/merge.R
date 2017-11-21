# read in collapsed and clean data
library(dplyr)
library(tidyverse)
data_95_96 <- read_csv("clean_data/collapsed_data/1996.csv")
data_96_97 <- read_csv("clean_data/collapsed_data/1997.csv")
data_97_98 <- read_csv("clean_data/collapsed_data/1998.csv")
data_1999 <- read_csv("clean_data/collapsed_data/1999.csv")
data_2000 <- read_csv("clean_data/collapsed_data/2000.csv")
data_2001 <- read_csv("clean_data/collapsed_data/2001.csv")
data_2002 <- read_csv("clean_data/collapsed_data/2002.csv")
data_2003 <- read_csv("clean_data/collapsed_data/2003.csv")
data_2004 <- read_csv("clean_data/collapsed_data/2004.csv")
data_2005 <- read_csv("clean_data/collapsed_data/2005.csv")
data_2006 <- read_csv("clean_data/collapsed_data/2006.csv") 
data_2007 <- read_csv("clean_data/collapsed_data/2007.csv") 
data_2008 <- read_csv("clean_data/collapsed_data/2008.csv") 
data_2009 <- read_csv("clean_data/collapsed_data/2009.csv") 
data_2010 <- read_csv("clean_data/collapsed_data/2010.csv") 
data_2011 <- read_csv("clean_data/collapsed_data/2011.csv") 
data_2012 <- read_csv("clean_data/collapsed_data/2012.csv") 
data_2013 <- read_csv("clean_data/collapsed_data/2013.csv") 
data_2014 <- read_csv("clean_data/collapsed_data/2014.csv") 
data_2015 <- read_csv("clean_data/collapsed_data/2015.csv") 

# binding by rows
data_bind <- bind_rows(data_95_96, data_96_97, data_97_98, data_1999,
                       data_2000, data_2001, data_2002, data_2003,
                       data_2004, data_2005, data_2006, data_2007,
                       data_2008, data_2009, data_2010, data_2011,
                       data_2012, data_2013, data_2014, data_2015)

data_bind <- data_bind %>% 
  filter(TOTPRISN < 1000) %>%
  filter(XCRHISSR < 9)

data_bind <- data_bind[, -17]

#data <- tbl_df(data)
#distrct_size <- table(data)
#district_size$DISTRICT <- as.numeric(district_size$DISTRICT)
#colnames(district_size) <- c("DISTRICT", "frequency")
#data2 <- left_join(data, district_size, by = "DISTRICT")

write_csv(data_bind, "clean_data/merged_data/96-15.csv")

