# this file explores merging datasets in chronological order after selecting the columns and coercing calues
library(tidyverse)

data_95_96 <- read.csv("clean_data/selected_data/95-96.csv")
data_96_97 <- read.csv("clean_data/selected_data/96-97.csv")
data_97_98 <- read.csv("clean_data/selected_data/97-98.csv")
data_1999 <- read.csv("clean_data/selected_data/1999.csv")
data_2000 <- read.csv("clean_data/selected_data/2000.csv")
data_2001 <- read.csv("clean_data/selected_data/2001.csv")
data_2002 <- read.csv("clean_data/selected_data/2002.csv")
data_2003 <- read.csv("clean_data/selected_data/2003.csv")
data_2004 <- read.csv("clean_data/selected_data/2004.csv")
data_2005 <- read.csv("clean_data/selected_data/2005.csv")
data_2006 <- read.csv("clean_data/selected_data/2006.csv") 
data_2007 <- read.csv("clean_data/selected_data/2007.csv") 
data_2008 <- read.csv("clean_data/selected_data/2008.csv") 
data_2009 <- read.csv("clean_data/selected_data/2009.csv") 
data_2010 <- read.csv("clean_data/selected_data/2010.csv") 
data_2011 <- read.csv("clean_data/selected_data/2011.csv") 
data_2012 <- read.csv("clean_data/selected_data/2012.csv") 
data_2013 <- read.csv("clean_data/selected_data/2013.csv") 
data_2014 <- read.csv("clean_data/selected_data/2014.csv") 
data_2015 <- read.csv("clean_data/selected_data/2015.csv") 

# Next we will type of the data year by year. # Level is as outlined in the codebook spreadsheet. 

# 95-96
  data_95_96$AGE <- as.numeric(paste(data_95_96$AGE))
  data_95_96$STATMIN <- as.numeric(paste(data_95_96$STATMIN))
  data_95_96$STATMAX <- as.numeric(paste(data_95_96$STATMAX))
  data_95_96$TOTPRISN <- as.numeric(paste(data_95_96$TOTPRISN))
  data_95_96$XFOLSOR <- as.numeric(paste(data_95_96$XFOLSOR))
  data_95_96$XCRHISSR <- as.numeric(paste(data_95_96$XCRHISSR))

# 96-97
  data_96_97$AGE <- as.numeric(paste(data_96_97$AGE))
  data_96_97$STATMIN <- as.numeric(paste(data_96_97$STATMIN))
  data_96_97$STATMAX <- as.numeric(paste(data_96_97$STATMAX))
  data_96_97$TOTPRISN <- as.numeric(paste(data_96_97$TOTPRISN))
  data_96_97$XFOLSOR <- as.numeric(paste(data_96_97$XFOLSOR))
  data_96_97$XCRHISSR <- as.numeric(paste(data_96_97$XCRHISSR))
  
# 97-98 
  data_97_98$AGE <- as.numeric(paste(data_97_98$AGE))
  data_97_98$STATMIN <- as.numeric(paste(data_97_98$STATMIN))
  data_97_98$STATMAX <- as.numeric(paste(data_97_98$STATMAX))
  data_97_98$TOTPRISN <- as.numeric(paste(data_97_98$TOTPRISN))
  data_97_98$XFOLSOR <- as.numeric(paste(data_97_98$XFOLSOR))
  data_97_98$XCRHISSR <- as.numeric(paste(data_97_98$XCRHISSR))

# 1999
  data_1999$STATMIN <- as.numeric(paste(data_1999$STATMIN))
  data_1999$STATMAX <- as.numeric(paste(data_1999$STATMAX))
  data_1999$TOTPRISN <- as.numeric(paste(data_1999$TOTPRISN))
  data_1999$XFOLSOR <- as.numeric(paste(data_1999$XFOLSOR))
  data_1999$XCRHISSR <- as.numeric(paste(data_1999$XCRHISSR))
  
# 2000
  data_2000$STATMIN <- as.numeric(paste(data_2000$STATMIN))
  data_2000$STATMAX <- as.numeric(paste(data_2000$STATMAX))
  data_2000$TOTPRISN <- as.numeric(paste(data_2000$TOTPRISN))
  data_2000$XFOLSOR <- as.numeric(paste(data_2000$XFOLSOR))
  data_2000$XCRHISSR <- as.numeric(paste(data_2000$XCRHISSR))
  
# 2001
  data_2001$STATMIN <- as.numeric(paste(data_2001$STATMIN))
  data_2001$STATMAX <- as.numeric(paste(data_2001$STATMAX))
  data_2001$TOTPRISN <- as.numeric(paste(data_2001$TOTPRISN))

# 2002
  data_2002$STATMIN <- as.numeric(paste(data_2002$STATMIN))
  data_2002$STATMAX <- as.numeric(paste(data_2002$STATMAX))
  data_2002$TOTPRISN <- as.numeric(paste(data_2002$TOTPRISN))

# ---- factors ---- #  
    
# 2003
  data_2003$MONRACE <- as.factor(data_2003$MONRACE)
  data_2003$MONSEX <- as.factor(data_2003$MONSEX)
  data_2003$EDUCATN <- as.factor(data_2003$EDUCATN)
  data_2003$DISPOSIT <- as.factor(data_2003$DISPOSIT)
  
# 2004
  data_2004$MONRACE <- as.factor(data_2004$MONRACE)
  data_2004$MONSEX <- as.factor(data_2004$MONSEX)
  data_2004$EDUCATN <- as.factor(data_2004$EDUCATN)
  data_2004$DISPOSIT <- as.factor(data_2004$DISPOSIT)  
  
# 2005
  data_2005$MONRACE <- as.factor(data_2005$MONRACE)
  data_2005$MONSEX <- as.factor(data_2005$MONSEX)
  data_2005$EDUCATN <- as.factor(data_2005$EDUCATN)
  data_2005$DISPOSIT <- as.factor(data_2005$DISPOSIT)  
  
# 2006
  data_2006$MONRACE <- as.factor(data_2006$MONRACE)
  data_2006$MONSEX <- as.factor(data_2006$MONSEX)
  data_2006$EDUCATN <- as.factor(data_2006$EDUCATN)
  data_2006$DISPOSIT <- as.factor(data_2006$DISPOSIT)  

# 2007
  data_2007$MONRACE <- as.factor(data_2007$MONRACE)
  data_2007$MONSEX <- as.factor(data_2007$MONSEX)
  data_2007$EDUCATN <- as.factor(data_2007$EDUCATN)
  data_2007$DISPOSIT <- as.factor(data_2007$DISPOSIT) 
  
# 2008
  data_2008$MONRACE <- as.factor(data_2008$MONRACE)
  data_2008$MONSEX <- as.factor(data_2008$MONSEX)
  data_2008$EDUCATN <- as.factor(data_2008$EDUCATN)
  data_2008$DISPOSIT <- as.factor(data_2008$DISPOSIT) 
  
# 2009
  data_2009$MONRACE <- as.factor(data_2009$MONRACE)
  data_2009$MONSEX <- as.factor(data_2009$MONSEX)
  data_2009$EDUCATN <- as.factor(data_2009$EDUCATN)
  data_2009$DISPOSIT <- as.factor(data_2009$DISPOSIT) 
  
# 2010
  data_2010$MONRACE <- as.factor(data_2010$MONRACE)
  data_2010$MONSEX <- as.factor(data_2010$MONSEX)
  data_2010$EDUCATN <- as.factor(data_2010$EDUCATN)
  data_2010$DISPOSIT <- as.factor(data_2010$DISPOSIT) 

# 2011
  data_2011$MONRACE <- as.factor(data_2011$MONRACE)
  data_2011$MONSEX <- as.factor(data_2011$MONSEX)
  data_2011$EDUCATN <- as.factor(data_2011$EDUCATN)
  data_2011$DISPOSIT <- as.factor(data_2011$DISPOSIT) 

# 2012
  data_2012$MONRACE <- as.factor(data_2012$MONRACE)
  data_2012$MONSEX <- as.factor(data_2012$MONSEX)
  data_2012$EDUCATN <- as.factor(data_2012$EDUCATN)
  data_2012$DISPOSIT <- as.factor(data_2012$DISPOSIT) 
  
# 2013
  data_2013$MONRACE <- as.factor(data_2013$MONRACE)
  data_2013$MONSEX <- as.factor(data_2013$MONSEX)
  data_2013$EDUCATN <- as.factor(data_2013$EDUCATN)
  data_2013$DISPOSIT <- as.factor(data_2013$DISPOSIT) 
  
# 2014
  data_2014$MONRACE <- as.factor(data_2014$MONRACE)
  data_2014$MONSEX <- as.factor(data_2014$MONSEX)
  data_2014$EDUCATN <- as.factor(data_2014$EDUCATN)
  data_2014$DISPOSIT <- as.factor(data_2014$DISPOSIT) 
  
# 2015
  data_2015$MONRACE <- as.factor(data_2015$MONRACE)
  data_2015$MONSEX <- as.factor(data_2015$MONSEX)
  data_2015$EDUCATN <- as.factor(data_2015$EDUCATN)
  data_2015$DISPOSIT <- as.factor(data_2015$DISPOSIT) 

# Cleaning up race variable - this section does a lot of releveling and changes missing/indeterminable to NA. 

data_95_96$MONRACE[data_95_96$MONRACE == "Missing or Indeterminable"] <- NA
data_95_96$MONRACE <- factor(data_95_96$MONRACE, levels(data_95_96$MONRACE)[c(6,3,1,2,5)])
levels(data_95_96$MONRACE)
table(data_95_96$MONRACE)
data_95_96$MONRACE <- as.numeric(data_95_96$MONRACE)

data_96_97$MONRACE[data_96_97$MONRACE == "Missing"] <- NA
data_96_97$MONRACE <- factor(data_96_97$MONRACE, levels(data_96_97$MONRACE)[c(6,3,1,2,5)])
levels(data_96_,97$MONRACE)
data_96_97$MONRACE <- as.numeric(data_96_97$MONRACE)

data_97_98$MONRACE[data_97_98$MONRACE == "Missing"] <- NA
data_97_98$MONRACE <- factor(data_97_98$MONRACE, levels(data_97_98$MONRACE)[c(6,3,1,2,5)])
levels(data_97_98$MONRACE)
data_97_98$MONRACE <- as.numeric(data_97_98$MONRACE)

data_1999$MONRACE[data_1999$MONRACE == "Multi-racial"] <- NA
data_1999$MONRACE <- factor(data_1999$MONRACE, levels(data_1999$MONRACE)[c(6,3,1,2,5)])
levels(data_1999$MONRACE)
data_1999$MONRACE <- as.numeric(data_1999$MONRACE)

data_2000$MONRACE[data_2000$MONRACE == "Multi-racial"] <- NA
data_2000$MONRACE <- factor(data_2000$MONRACE, levels(data_2000$MONRACE)[c(6,3,1,2,5)])
levels(data_2000$MONRACE)
data_2000$MONRACE <- as.numeric(data_2000$MONRACE)

data_2001$MONRACE[data_2001$MONRACE == "Multi-racial"] <- NA
data_2001$MONRACE <- factor(data_2001$MONRACE, levels(data_2001$MONRACE)[c(6,3,1,2,5)])
levels(data_2001$MONRACE)
data_2001$MONRACE <- as.numeric(data_2001$MONRACE)

data_2002$MONRACE[data_2002$MONRACE == "Multi-racial"] <- NA
data_2002$MONRACE <- factor(data_2002$MONRACE, levels(data_2002$MONRACE)[c(6,3,1,2,5)])
levels(data_2002$MONRACE)
data_2002$MONRACE <- as.numeric(data_2002$MONRACE)

data_2003$MONRACE[data_2003$MONRACE == 7] <- 5
data_2003$MONRACE <- factor(data_2003$MONRACE, levels(data_2003$MONRACE)[c(1:5)])
levels(data_2003$MONRACE)
table(data_2003$MONRACE)
data_2003$MONRACE <- as.numeric(data_2003$MONRACE)

table(data_2004$MONRACE)
data_2004$MONRACE[data_2004$MONRACE == 7] <- 5
data_2004$MONRACE <- factor(data_2004$MONRACE, levels(data_2004$MONRACE)[c(1:5)])
levels(data_2004$MONRACE)
data_2004$MONRACE <- as.numeric(data_2004$MONRACE)

table(data_2005$MONRACE)
data_2005$MONRACE[data_2005$MONRACE == 7] <- 5
data_2005$MONRACE <- factor(data_2005$MONRACE, levels(data_2005$MONRACE)[c(1:5)])
levels(data_2005$MONRACE)
data_2005$MONRACE <- as.numeric(data_2005$MONRACE)

table(data_2006$MONRACE)
data_2006$MONRACE[data_2006$MONRACE == 7] <- 5
data_2006$MONRACE <- factor(data_2006$MONRACE, levels(data_2006$MONRACE)[c(1:5)])
levels(data_2006$MONRACE)
data_2006$MONRACE <- as.numeric(data_2006$MONRACE)

table(data_2007$MONRACE)
data_2007$MONRACE[data_2007$MONRACE == 6] <- 5
data_2007$MONRACE[data_2007$MONRACE == 7] <- 5
data_2007$MONRACE[data_2007$MONRACE == 8] <- NA
data_2007$MONRACE <- factor(data_2007$MONRACE, levels(data_2007$MONRACE)[c(1:5)])
levels(data_2007$MONRACE)
data_2007$MONRACE <- as.numeric(data_2007$MONRACE)


table(data_2008$MONRACE)
data_2008$MONRACE[data_2008$MONRACE == 6] <- 5
data_2008$MONRACE[data_2008$MONRACE == 7] <- 5
data_2008$MONRACE[data_2008$MONRACE == 8] <- NA
data_2008$MONRACE <- factor(data_2008$MONRACE, levels(data_2008$MONRACE)[c(1:5)])
levels(data_2008$MONRACE)
data_2008$MONRACE <- as.numeric(data_2008$MONRACE)

table(data_2009$MONRACE)
data_2009$MONRACE[data_2009$MONRACE == 7] <- 5
data_2009$MONRACE[data_2009$MONRACE == 8] <- NA
data_2009$MONRACE[data_2009$MONRACE == 9] <- 5
data_2009$MONRACE <- factor(data_2009$MONRACE, levels(data_2009$MONRACE)[c(1:5)])
levels(data_2009$MONRACE)
data_2009$MONRACE <- as.numeric(data_2009$MONRACE)

table(data_2010$MONRACE)
data_2010$MONRACE[data_2010$MONRACE == 7] <- 5
data_2010$MONRACE[data_2010$MONRACE == 8] <- NA
data_2010$MONRACE[data_2010$MONRACE == 9] <- 5
data_2010$MONRACE <- factor(data_2010$MONRACE, levels(data_2010$MONRACE)[c(1:5)])
levels(data_2010$MONRACE)
data_2010$MONRACE <- as.numeric(data_2010$MONRACE)

table(data_2011$MONRACE)
data_2011$MONRACE[data_2011$MONRACE == 7] <- 5
data_2011$MONRACE[data_2011$MONRACE == 8] <- NA
data_2011$MONRACE[data_2011$MONRACE == 9] <- 5
data_2011$MONRACE <- factor(data_2011$MONRACE, levels(data_2011$MONRACE)[c(1:5)])
levels(data_2011$MONRACE)
data_2011$MONRACE <- as.numeric(data_2011$MONRACE)

table(data_2012$MONRACE)
data_2012$MONRACE[data_2012$MONRACE == 7] <- 5
data_2012$MONRACE[data_2012$MONRACE == 8] <- NA
data_2012$MONRACE[data_2012$MONRACE == 9] <- 5
data_2012$MONRACE <- factor(data_2012$MONRACE, levels(data_2012$MONRACE)[c(1:5)])
levels(data_2012$MONRACE)
data_2012$MONRACE <- as.numeric(data_2012$MONRACE)

table(data_2013$MONRACE)
data_2013$MONRACE[data_2013$MONRACE == 7] <- 5
data_2013$MONRACE[data_2013$MONRACE == 8] <- NA
data_2013$MONRACE[data_2013$MONRACE == 9] <- 5
data_2013$MONRACE <- factor(data_2013$MONRACE, levels(data_2013$MONRACE)[c(1:5)])
levels(data_2013$MONRACE)
data_2013$MONRACE <- as.numeric(data_2013$MONRACE)

table(data_2014$MONRACE)
data_2014$MONRACE[data_2014$MONRACE == 7] <- 5
data_2014$MONRACE[data_2014$MONRACE == 8] <- NA
data_2014$MONRACE[data_2014$MONRACE == 9] <- 5
data_2014$MONRACE <- factor(data_2014$MONRACE, levels(data_2014$MONRACE)[c(1:5)])
levels(data_2014$MONRACE)
data_2014$MONRACE <- as.numeric(data_2014$MONRACE)

table(data_2015$MONRACE)
data_2015$MONRACE[data_2015$MONRACE == 7] <- 5
data_2015$MONRACE[data_2015$MONRACE == 8] <- NA
data_2015$MONRACE[data_2015$MONRACE == 9] <- 5
data_2015$MONRACE[data_2015$MONRACE == 10] <- NA
data_2015$MONRACE <- factor(data_2015$MONRACE, levels(data_2015$MONRACE)[c(1:5)])
levels(data_2015$MONRACE)
data_2015$MONRACE <- as.numeric(data_2015$MONRACE)

# cleans up MONSEX variable
levels(data_95_96$MONSEX)

levels(data_96_97$MONSEX)

levels(data_97_98$MONSEX)

levels(data_1999$MONSEX)
table(data_1999$MONSEX)


# merge data 

data_bind <- rbind(data_95_96,
                   data_96_97,
                   data_97_98,
                   data_1999,
                   data_2000,
                   data_2001,
                   data_2002,
                   data_2003,
                   data_2004,
                   data_2005,
                   data_2006,
                   data_2007,
                   data_2008,
                   data_2009,
                   data_2010,
                   data_2011,
                   data_2012,
                   data_2013,
                   data_2014,
                   data_2015)

unique(data_bind$MONRACE)
data_bind$MONRACE <- as.numeric(data_bind$MONRACE)
plot(table(data_bind$MONRACE))

# summary to check NAs
summary(data_bind)

write.csv(data_bind, "clean_data/variable_data/binded_data.csv")

ggplot(data_bind, aes(x = XFOLSOR, y = TOTPRISN)) + geom_smooth(method = "loess", size = 1.2)


# model that you run
# data_bind$TOTPRISN <- as.numeric(paste(data_bind$TOTPRISN))
race.lm <- lm(TOTPRISN ~ + AGE + DISPOSIT + XFOLSOR * XCRHISSR + DISTRICT +
              MONCIRC + MONSEX + YEAR + as.factor(MONRACE), data_bind)
summary(race.lm)
# export data to the variable data folder
  
write.csv(data_95_96, "clean_data/variable_data/95-96.csv")
write.csv(data_96_97, "clean_data/variable_data/96-97.csv")
write.csv(data_97_98, "clean_data/variable_data/97-98.csv")
write.csv(data_1999, "clean_data/variable_data/1999.csv")
write.csv(data_2000, "clean_data/variable_data/2000.csv")
write.csv(data_2001, "clean_data/variable_data/2001.csv")
write.csv(data_2002, "clean_data/variable_data/2002.csv")
write.csv(data_2003, "clean_data/variable_data/2003.csv")
write.csv(data_2004, "clean_data/variable_data/2004.csv")
write.csv(data_2005, "clean_data/variable_data/2005.csv")
write.csv(data_2006, "clean_data/variable_data/2006.csv")
write.csv(data_2007, "clean_data/variable_data/2007.csv")
write.csv(data_2008, "clean_data/variable_data/2008.csv")
write.csv(data_2009, "clean_data/variable_data/2009.csv")
write.csv(data_2010, "clean_data/variable_data/2010.csv")
write.csv(data_2011, "clean_data/variable_data/2011.csv")
write.csv(data_2012, "clean_data/variable_data/2012.csv")
write.csv(data_2013, "clean_data/variable_data/2013.csv")
write.csv(data_2014, "clean_data/variable_data/2014.csv")
write.csv(data_2015, "clean_data/variable_data/2015.csv")


