# this file explores merging datasets in chronological order after selecting the columns and coercing calues
library(tidyverse)
library(readr)

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

# Converting the datatype. 
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

# Changing data type to factors for later organization  
    
  # 2003
  data_2003$MONRACE <- as.factor(data_2003$MONRACE)
  data_2003$EDUCATN <- as.factor(data_2003$EDUCATN)
  data_2003$DISPOSIT <- as.factor(data_2003$DISPOSIT)
  
  # 2004
  data_2004$MONRACE <- as.factor(data_2004$MONRACE)
  data_2004$EDUCATN <- as.factor(data_2004$EDUCATN)
  data_2004$DISPOSIT <- as.factor(data_2004$DISPOSIT)  
  
  # 2005
  data_2005$MONRACE <- as.factor(data_2005$MONRACE)
  data_2005$EDUCATN <- as.factor(data_2005$EDUCATN)
  data_2005$DISPOSIT <- as.factor(data_2005$DISPOSIT)  
  
  # 2006
  data_2006$MONRACE <- as.factor(data_2006$MONRACE)
  data_2006$EDUCATN <- as.factor(data_2006$EDUCATN)
  data_2006$DISPOSIT <- as.factor(data_2006$DISPOSIT)  

  # 2007
  data_2007$MONRACE <- as.factor(data_2007$MONRACE)
  data_2007$EDUCATN <- as.factor(data_2007$EDUCATN)
  data_2007$DISPOSIT <- as.factor(data_2007$DISPOSIT) 
  
  # 2008
  data_2008$MONRACE <- as.factor(data_2008$MONRACE)
  data_2008$EDUCATN <- as.factor(data_2008$EDUCATN)
  data_2008$DISPOSIT <- as.factor(data_2008$DISPOSIT) 
  
  # 2009
  data_2009$MONRACE <- as.factor(data_2009$MONRACE)
  data_2009$EDUCATN <- as.factor(data_2009$EDUCATN)
  data_2009$DISPOSIT <- as.factor(data_2009$DISPOSIT) 
  
  # 2010
  data_2010$MONRACE <- as.factor(data_2010$MONRACE)
  data_2010$EDUCATN <- as.factor(data_2010$EDUCATN)
  data_2010$DISPOSIT <- as.factor(data_2010$DISPOSIT) 

  # 2011
  data_2011$MONRACE <- as.factor(data_2011$MONRACE)
  data_2011$EDUCATN <- as.factor(data_2011$EDUCATN)
  data_2011$DISPOSIT <- as.factor(data_2011$DISPOSIT) 

  # 2012
  data_2012$MONRACE <- as.factor(data_2012$MONRACE)
  data_2012$EDUCATN <- as.factor(data_2012$EDUCATN)
  data_2012$DISPOSIT <- as.factor(data_2012$DISPOSIT) 
  
  # 2013
  data_2013$MONRACE <- as.factor(data_2013$MONRACE)
  data_2013$EDUCATN <- as.factor(data_2013$EDUCATN)
  data_2013$DISPOSIT <- as.factor(data_2013$DISPOSIT) 
  
  # 2014
  data_2014$MONRACE <- as.factor(data_2014$MONRACE)
  data_2014$EDUCATN <- as.factor(data_2014$EDUCATN)
  data_2014$DISPOSIT <- as.factor(data_2014$DISPOSIT) 
  
  # 2015
  data_2015$MONRACE <- as.factor(data_2015$MONRACE)
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

# cleaning MONSEX variable
  data_95_96$MONSEX <- as.numeric(data_95_96$MONSEX)
  data_95_96$MONSEX[data_95_96$MONSEX == 2] <- 0
  data_95_96$MONSEX[data_95_96$MONSEX == 3] <- NA
  unique(data_95_96$MONSEX)
  
  data_96_97$MONSEX <- as.numeric(data_96_97$MONSEX)
  data_96_97$MONSEX[data_96_97$MONSEX == 2] <- 0
  data_96_97$MONSEX[data_96_97$MONSEX == 3] <- NA
  unique(data_96_97$MONSEX)
  
  data_97_98$MONSEX <- as.numeric(data_97_98$MONSEX)
  data_97_98$MONSEX[data_97_98$MONSEX == 0] <- 1
  data_97_98$MONSEX[data_97_98$MONSEX == 2] <- 0
  data_97_98$MONSEX[data_97_98$MONSEX == 3] <- NA
  unique(data_97_98$MONSEX)
  table(data_97_98$MONSEX)
  
  data_1999$MONSEX <- as.numeric(data_1999$MONSEX)
  data_1999$MONSEX[data_1999$MONSEX == 2] <- 0
  table(data_1999$MONSEX)
  
  data_2000$MONSEX <- as.numeric(data_2000$MONSEX)
  data_2000$MONSEX[data_2000$MONSEX == 2] <- 0
  table(data_2000$MONSEX)
  
  data_2001$MONSEX <- as.numeric(data_2001$MONSEX)
  data_2001$MONSEX[data_2001$MONSEX == 2] <- 0
  table(data_2001$MONSEX)
  
  data_2002$MONSEX <- as.numeric(data_2002$MONSEX)
  data_2002$MONSEX[data_2002$MONSEX == 2] <- 0
  table(data_2002$MONSEX)

# Collapsing education variable
  # 95-96
  unique(data_95_96$EDUCATN)
  data_95_96$EDUCATN <- fct_recode(data_95_96$EDUCATN,
                                   "0" = "No schooling",
                                   "1" = "Some elementary school",
                                   "1" = "One yr school completed",
                                   "1" = "Two yr school completed",
                                   "1" = "Three yr school compl",
                                   "1" = "Four yr school completed",
                                   "1" = "Five yr school completed",
                                   "1" = "Six yr school completed",
                                   "1" = "Seven yr school compl",
                                   "1" = "Eight yr school compl",
                                   "1" = "Nine yr school completed",
                                   "1" = "Ten yr school completed",
                                   "1" = "Eleven yr school compl",
                                   "1" = "Some high school",
                                   "1" = "Middle schooljunior high",
                                   "2" = "GED (General Education Diploma)",
                                   "2" = "High school graduate",
                                   "2" = "One year of collegefreshman",
                                   "2" = "Two years of collegesophomore",
                                   "2" = "Three years of collegejunior",
                                   "2" = "Some college",
                                   "3" = "Associate degree (AA)",
                                   "2" = "Some trade or vocational school",
                                   "3" = "Trade or vocational degree",
                                   "3" = "Military training",
                                   "4" = "College graduate",
                                   "4" = "Some graduate school",
                                   "5" = "Grad deg (Mst, JD, MD, PhD, etc)",
                                   NULL = "Missing or Indeterminable")
  
  levels(data_95_96$EDUCATN)
  table(data_95_96$EDUCATN)
  
  # 96-97
  data_96_97$EDUCATN <- fct_recode(data_96_97$EDUCATN,
                                   "0" = "No Schooling",
                                   "1" = "Some Elementary School",
                                   "1" = "One Yr School Completed",
                                   "1" = "Two Yr School Completed",
                                   "1" = "Three Yr School Completed",
                                   "1" = "Four Yr School Completed",
                                   "1" = "Five Yr School Completed",
                                   "1" = "Six Yr School Completed",
                                   "1" = "Seven Yr School Completed",
                                   "1" = "Eight Yr School Completed",
                                   "1" = "Nine Yr School Completed",
                                   "1" = "Ten Yr School Completed",
                                   "1" = "Eleven Yr School Completed",
                                   "1" = "Some High School",
                                   "1" = "Middle SchoolJunior High",
                                   "2" = "GED (General Education Diploma)",
                                   "2" = "High School Graduate",
                                   "2" = "One Year Of CollegeFreshman",
                                   "2" = "Two Years Of CollegeSophomore",
                                   "2" = "Three Years Of CollegeJunior",
                                   "2" = "Some Trade or Vocational School",
                                   "2" = "Some College",
                                   "3" = "Associate Degree (AA)",
                                   "3" = "Trade Or Vocational Degree",
                                   "3" = "Military Training",
                                   "4" = "College Graduate",
                                   "4" = "Some Graduate School",
                                   "5" = "Grad Degree (Mst, JD, MD, PhD, etc)",
                                   NULL = "Missing")
  levels(data_96_97$EDUCATN)
  
  # 97-98
  data_97_98$EDUCATN <- fct_recode(data_97_98$EDUCATN,
                                   "0" = "No Schooling",
                                   "1" = "Some Elementary School",
                                   "1" = "One Yr School Completed",
                                   "1" = "Two Yr School Completed",
                                   "1" = "Three Yr School Completed",
                                   "1" = "Four Yr School Completed",
                                   "1" = "Five Yr School Completed",
                                   "1" = "Six Yr School Completed",
                                   "1" = "Seven Yr School Completed",
                                   "1" = "Eight Yr School Completed",
                                   "1" = "Nine Yr School Completed",
                                   "1" = "Ten Yr School Completed",
                                   "1" = "Eleven Yr School Completed",
                                   "1" = "Some High School",
                                   "1" = "Middle SchoolJunior High",
                                   "2" = "GED (General Education Diploma)",
                                   "2" = "High School Graduate",
                                   "2" = "One Year Of CollegeFreshman",
                                   "2" = "Two Years Of CollegeSophomore",
                                   "2" = "Three Years Of CollegeJunior",
                                   "2" = "Some Trade or Vocational School",
                                   "2" = "Some College",
                                   "3" = "Associate Degree (AA)",
                                   "3" = "Trade Or Vocational Degree",
                                   "3" = "Military Training",
                                   "4" = "College Graduate",
                                   "4" = "Some Graduate School",
                                   "5" = "Grad Degree (Mst, JD, MD, PhD, etc)",
                                   NULL = "Missing")
  levels(data_97_98$EDUCATN)
  
  # 1999
  data_1999$EDUCATN <- fct_recode(data_1999$EDUCATN,
                                   "0" = "No Schooling",
                                   "1" = "Some Elementary School",
                                   "1" = "One Yr School Completed",
                                   "1" = "Two Yr School Completed",
                                   "1" = "Three Yr School Completed",
                                   "1" = "Four Yr School Completed",
                                   "1" = "Five Yr School Completed",
                                   "1" = "Six Yr School Completed",
                                   "1" = "Seven Yr School Completed",
                                   "1" = "Eight Yr School Completed",
                                   "1" = "Nine Yr School Completed",
                                   "1" = "Ten Yr School Completed",
                                   "1" = "Eleven Yr School Completed",
                                   "1" = "Some High School",
                                   "1" = "Middle SchoolJunior High",
                                   "2" = "GED (General Education Diploma)",
                                   "2" = "High School Graduate",
                                   "2" = "One Year Of CollegeFreshman",
                                   "2" = "Two Years Of CollegeSophomore",
                                   "2" = "Three Years Of CollegeJunior",
                                   "2" = "Some Trade or Vocational School",
                                   "2" = "Some College",
                                   "3" = "Associate Degree (AA)",
                                   "3" = "Trade Or Vocational Degree",
                                   "3" = "Military Training",
                                   "4" = "College Graduate",
                                   "4" = "Some Graduate School",
                                   "5" = "Grad Degree (Mst, JD, MD, PhD, etc",
                                   NULL = "Missing")
  levels(data_1999$EDUCATN)
  table(data_1999$EDUCATN)
  
  # 2000
  data_2000$EDUCATN <- fct_recode(data_2000$EDUCATN,
                                  "0" = "No schooling",
                                  "1" = "Some elementary schl",
                                  "1" = "One yr schl completd",
                                  "1" = "Two yr schl completd",
                                  "1" = "Three yr schl compld",
                                  "1" = "Four yr schl compltd",
                                  "1" = "Five yr schl compltd",
                                  "1" = "Six yr schl completd",
                                  "1" = "Seven yr schl compld",
                                  "1" = "Eight yr schl compld",
                                  "1" = "Nine yr schl compltd",
                                  "1" = "Ten yr schl completd",
                                  "1" = "Eleven yr schl compl",
                                  "1" = "Some high school",
                                  "1" = "Middle schl/jr high",
                                  "2" = "GED",
                                  "2" = "High school graduate",
                                  "2" = "One year of college",
                                  "2" = "Two years of college",
                                  "2" = "Three years college",
                                  "2" = "Some trade/vocationl",
                                  "2" = "Some college",
                                  "3" = "Associate degree",
                                  "3" = "Trade/vocational deg",
                                  "3" = "Military training",
                                  "4" = "College graduate",
                                  "4" = "Some graduate school",
                                  "5" = "Grad degree",
                                  NULL = "Missing")
  levels(data_2000$EDUCATN)
  
  #2001
  data_2001$EDUCATN <- fct_recode(data_2001$EDUCATN,
                                  "0" = "No Schooling",
                                  "1" = "Some Elementary School",
                                  "1" = "One Yr School Completed",
                                  "1" = "Two Yr School Completed",
                                  "1" = "Three Yr School Completed",
                                  "1" = "Four Yr School Completed",
                                  "1" = "Five Yr School Completed",
                                  "1" = "Six Yr School Completed",
                                  "1" = "Seven Yr School Completed",
                                  "1" = "Eight Yr School Completed",
                                  "1" = "Nine Yr School Completed",
                                  "1" = "Ten Yr School Completed",
                                  "1" = "Eleven Yr School Completed",
                                  "1" = "Some High School",
                                  "1" = "Middle SchoolJunior High",
                                  "2" = "GED (General Education Diploma)",
                                  "2" = "High School Graduate",
                                  "2" = "One Year Of CollegeFreshman",
                                  "2" = "Two Years Of CollegeSophomore",
                                  "2" = "Three Years Of CollegeJunior",
                                  "2" = "Some Trade or Vocational School",
                                  "2" = "Some College",
                                  "3" = "Associate Degree (AA)",
                                  "3" = "Trade Or Vocational Degree",
                                  "3" = "Military Training",
                                  "4" = "College Graduate",
                                  "4" = "Some Graduate School",
                                  "5" = "Grad Degree (Mst, JD, MD, PhD, etc",
                                  NULL = "Missing")
  levels(data_2001$EDUCATN)
  
  # 2002
  data_2002$EDUCATN <- fct_recode(data_2002$EDUCATN,
                                  "0" = "No Schooling",
                                  "1" = "Some Elementary School",
                                  "1" = "One Yr School Completed",
                                  "1" = "Two Yr School Completed",
                                  "1" = "Three Yr School Completed",
                                  "1" = "Four Yr School Completed",
                                  "1" = "Five Yr School Completed",
                                  "1" = "Six Yr School Completed",
                                  "1" = "Seven Yr School Completed",
                                  "1" = "Eight Yr School Completed",
                                  "1" = "Nine Yr School Completed",
                                  "1" = "Ten Yr School Completed",
                                  "1" = "Eleven Yr School Completed",
                                  "1" = "Some High School",
                                  "1" = "Middle SchoolJunior High",
                                  "2" = "GED (General Education Diploma)",
                                  "2" = "High School Graduate",
                                  "2" = "One Year Of CollegeFreshman",
                                  "2" = "Two Years Of CollegeSophomore",
                                  "2" = "Three Years Of CollegeJunior",
                                  "3" = "Some Trade or Vocational School",
                                  "2" = "Some College",
                                  "3" = "Associate Degree (AA)",
                                  "3" = "Trade Or Vocational Degree",
                                  "3" = "Military Training",
                                  "4" = "College Graduate",
                                  "4" = "Some Graduate School",
                                  "5" = "Grad Degree (Mst, JD, MD, PhD, etc",
                                  NULL = "Missing")
  table(data_2002$EDUCATN)
  
  # function for 2003 through 2015 as they have the same levels (refer to codebook)
  change_education = function(data) {
    data$EDUCATN <- fct_recode(data$EDUCATN,
                            "0" = "0",
                            "1" = "1",
                            "1" = "2",
                            "1" = "3",
                            "1" = "4",
                            "1" = "5",
                            "1" = "6",
                            "1" = "7",
                            "1" = "8",
                            "1" = "9",
                            "1" = "10",
                            "1" = "11",
                            "2" = "12",
                            "2" = "13",
                            "2" = "14",
                            "2" = "15",
                            "4" = "16",
                            "2" = "21",
                            "3" = "22",
                            "3" = "23",
                            "5" = "24",
                            "1" = "31",
                            "1" = "32",
                            "2" = "33",
                            "2" = "34",
                            "4" = "35",
                            "3" = "36",
                            "1" = "37",
                            NULL = "Missing")
  }
  
  data_2003$EDUCATN <- change_education(data_2003)
  data_2004$EDUCATN <- change_education(data_2004)
  data_2005$EDUCATN <- change_education(data_2005)
  data_2006$EDUCATN <- change_education(data_2006)
  data_2007$EDUCATN <- change_education(data_2007)
  data_2008$EDUCATN <- change_education(data_2008)
  data_2009$EDUCATN <- change_education(data_2009)
  data_2010$EDUCATN <- change_education(data_2010)
  data_2011$EDUCATN <- change_education(data_2011)
  data_2012$EDUCATN <- change_education(data_2012)
  data_2013$EDUCATN <- change_education(data_2013)
  data_2014$EDUCATN <- change_education(data_2014)
  data_2015$EDUCATN <- change_education(data_2015)
  table(data_2015$EDUCATN)

# Cleaning disposit variable
  # 95-96
  data_95_96$DISPOSIT <- fct_recode(data_95_96$DISPOSIT, 
                                    "2" = "Both guilty plea and trial",
                                    "0" = "Guilty plea",
                                    "1" = "Jury trial",
                                    NULL = "Missing or Indeterminable",
                                    "0" = "Nolo contendere",
                                    "2" = "Trial by judge or bench trial")
  table(data_95_96$DISPOSIT)
  
  # 96-97
  data_96_97$DISPOSIT <- fct_recode(data_96_97$DISPOSIT, 
                                    "2" = "Both Guilty Plea and Trial",
                                    "0" = "Guilty Plea",
                                    "1" = "Jury Trial",
                                    NULL = "Missing",
                                    "0" = "Nolo Contendere",
                                    "2" = "Trial by Judge or Bench Trial")
  table(data_96_97$DISPOSIT)
  
  # 97-98
  data_97_98$DISPOSIT <- fct_recode(data_97_98$DISPOSIT, 
                                    "2" = "Both Guilty Plea and Trial",
                                    "0" = "Guilty Plea",
                                    "1" = "Jury Trial",
                                    NULL = "Missing",
                                    "0" = "Nolo Contendere",
                                    "2" = "Trial by Judge or Bench Trial")
  table(data_97_98$DISPOSIT)
  
  # 1999 
  data_1999$DISPOSIT <- fct_recode(data_1999$DISPOSIT, 
                                    "2" = "Both Guilty Plea and Trial",
                                    "0" = "Guilty Plea",
                                    "1" = "Jury Trial",
                                    "0" = "Nolo Contendere",
                                    "2" = "Trial by Judge or Bench Trial")
  table(data_1999$DISPOSIT)
  
  # 2000
  data_2000$DISPOSIT <- fct_recode(data_2000$DISPOSIT, 
                                   "2" = "Guilty plea & trial",
                                   "0" = "Guilty plea",
                                   "1" = "Jury trial",
                                   "0" = "Nolo contendere",
                                   "2" = "Trial-judge/bench")
  table(data_2000$DISPOSIT)
  
  # 2001
  data_2001$DISPOSIT <- fct_recode(data_2001$DISPOSIT, 
                                   "2" = "Both Guilty Plea and Trial (>1count)",
                                   "0" = "Guilty Plea",
                                   "1" = "Jury Trial",
                                   "0" = "Nolo Contendere",
                                   "2" = "Trial by Judge or Bench Trial",
                                   NULL = "0")
  table(data_2001$DISPOSIT)
  
  # 2002
  data_2002$DISPOSIT <- fct_recode(data_2002$DISPOSIT, 
                                   "2" = "Both Guilty Plea and Trial (>1count)",
                                   "0" = "Guilty Plea",
                                   "1" = "Jury Trial",
                                   "0" = "Nolo Contendere",
                                   "2" = "Trial by Judge or Bench Trial")
  table(data_2002$DISPOSIT)
  
  # 2003 - 2006
  table(data_2003$DISPOSIT)
  table(data_2004$DISPOSIT)
  table(data_2005$DISPOSIT)
  table(data_2006$DISPOSIT)
  
  data_list <- list(data_2003,
                    data_2004,
                    data_2005,
                    data_2006)

  disposit_collapse_1 <- function(data) {
  data$DISPOSIT <- fct_recode(data$DISPOSIT, 
             NULL = "0",
             "0" = "1",
             "0" = "2",
             "1" = "3",
             "2" = "4",
             "2" = "5")
  }
  
  data_2003$DISPOSIT <- disposit_collapse_1(data_2003)
  data_2004$DISPOSIT <- disposit_collapse_1(data_2004)
  data_2005$DISPOSIT <- disposit_collapse_1(data_2005)
  data_2006$DISPOSIT <- disposit_collapse_1(data_2006)
  
  # 2007-2015
  table(data_2007$DISPOSIT)
  table(data_2008$DISPOSIT)
  table(data_2009$DISPOSIT)
  table(data_2010$DISPOSIT)
  table(data_2011$DISPOSIT)
  table(data_2012$DISPOSIT)
  table(data_2013$DISPOSIT)
  table(data_2014$DISPOSIT)
  table(data_2015$DISPOSIT)
  
  disposit_collapse_2 <- function(data) {
    data$DISPOSIT <- fct_recode(data$DISPOSIT, 
                                "2" = "0",
                                "0" = "1",
                                "0" = "2",
                                "1" = "3",
                                "2" = "4",
                                "2" = "5")
  }
  
  data_2007$DISPOSIT <- disposit_collapse_2(data_2007)
  data_2008$DISPOSIT <- disposit_collapse_2(data_2008)
  data_2009$DISPOSIT <- disposit_collapse_2(data_2009)
  data_2010$DISPOSIT <- disposit_collapse_2(data_2010)
  data_2011$DISPOSIT <- disposit_collapse_2(data_2011)
  data_2012$DISPOSIT <- disposit_collapse_2(data_2012)
  data_2013$DISPOSIT <- disposit_collapse_2(data_2013)
  data_2014$DISPOSIT <- disposit_collapse_2(data_2014)
  data_2015$DISPOSIT <- disposit_collapse_2(data_2015)
  
# cleaning citizenship variable
  # 1995-1996
  data_95_96$CITIZEN <- fct_recode(data_95_96$CITIZEN, 
                                   "1" = "United States citizen",
                                   "2" = "Resident alien: Legal alien",
                                   "3" = "Illegal alien",
                                   "4" = "Not a US citizen; Alien status unknown",
                                   NULL = "MissingIndeterminable")
  
  # 1996-1997
  data_96_97$CITIZEN <- fct_recode(data_96_97$CITIZEN, 
                                   "1" = "United States Citizen",
                                   "2" = "Resident/Legal Alien",
                                   "3" = "Illegal Alien",
                                   "4" = "Not a US Citizen/Alien Status Unknown",
                                   NULL = "Missing")
  # 1997-1998
  data_97_98$CITIZEN <- fct_recode(data_97_98$CITIZEN, 
                                   "1" = "United States Citizen",
                                   "2" = "Resident/Legal Alien",
                                   "3" = "Illegal Alien",
                                   "4" = "Not a US Citizen/Alien Status Unknown",
                                   NULL = "Missing")
  
  # 1999
  data_1999$CITIZEN <- fct_recode(data_1999$CITIZEN, 
                                   "1" = "United States Citizen",
                                   "2" = "Resident/Legal Alien",
                                   "3" = "Illegal Alien",
                                   "4" = "Not a US Citizen/Alien Status Unknown",
                                   NULL = "Missing")
  
  # 2000
  data_2000$CITIZEN <- fct_recode(data_2000$CITIZEN, 
                                  "1" = "United States citzen",
                                  "2" = "Resident/legal alien",
                                  "3" = "Illegal alien",
                                  "4" = "Not US citizen",
                                  NULL = "Missing")
  # 2001
  data_2001$CITIZEN <- fct_recode(data_2001$CITIZEN, 
                                  "1" = "United States Citizen",
                                  "2" = "Resident/Legal Alien",
                                  "3" = "Illegal Alien",
                                  "4" = "Not a US Citizen/Alien Status Unknown",
                                  NULL = "Missing")
  # 2002
  data_2002$CITIZEN <- fct_recode(data_2002$CITIZEN, 
                                  "1" = "United States Citizen",
                                  "2" = "Resident/Legal Alien",
                                  "3" = "Illegal Alien",
                                  "4" = "Not a US Citizen/Alien Status Unknown",
                                  NULL = "Missing")
  # 2003-2006 is good

  # 2007-2015
  
  data_2007 <- data_2007[data_2007$CITIZEN != 5, ]
  data_2008 <- data_2008[data_2008$CITIZEN != 5, ]
  data_2009 <- data_2008[data_2008$CITIZEN != 5, ]
  data_2010 <- data_2008[data_2008$CITIZEN != 5, ]
  data_2011 <- data_2008[data_2008$CITIZEN != 5, ]
  data_2012 <- data_2008[data_2008$CITIZEN != 5, ]
  data_2013 <- data_2008[data_2008$CITIZEN != 5, ]
  data_2014 <- data_2008[data_2008$CITIZEN != 5, ]
  data_2015 <- data_2008[data_2008$CITIZEN != 5, ]

  # coercing 1995-2002
  
  data_95_96$CITIZEN <- as.numeric(paste(data_95_96$CITIZEN))
  data_96_97$CITIZEN <- as.numeric(paste(data_96_97$CITIZEN))
  data_97_98$CITIZEN <- as.numeric(paste(data_97_98$CITIZEN))
  data_1999$CITIZEN <- as.numeric(paste(data_1999$CITIZEN))
  data_2000$CITIZEN <- as.numeric(paste(data_2000$CITIZEN))
  data_2001$CITIZEN <- as.numeric(paste(data_2001$CITIZEN))
  data_2002$CITIZEN <- as.numeric(paste(data_2002$CITIZEN))
  
# saving data to numbered data
  write_csv(data_95_96, "clean_data/collapsed_data/95-96.csv")
  write_csv(data_96_97, "clean_data/collapsed_data/96-97.csv")
  write_csv(data_97_98, "clean_data/collapsed_data/97-98.csv")
  write_csv(data_1999, "clean_data/collapsed_data/1999.csv")
  write_csv(data_2000, "clean_data/collapsed_data/2000.csv")
  write_csv(data_2001, "clean_data/collapsed_data/2001.csv")
  write_csv(data_2002, "clean_data/collapsed_data/2002.csv")
  write_csv(data_2003, "clean_data/collapsed_data/2003.csv")
  write_csv(data_2004, "clean_data/collapsed_data/2004.csv")
  write_csv(data_2005, "clean_data/collapsed_data/2005.csv")
  write_csv(data_2006, "clean_data/collapsed_data/2006.csv")
  write_csv(data_2007, "clean_data/collapsed_data/2007.csv")
  write_csv(data_2008, "clean_data/collapsed_data/2008.csv")
  write_csv(data_2009, "clean_data/collapsed_data/2009.csv")
  write_csv(data_2010, "clean_data/collapsed_data/2010.csv")
  write_csv(data_2011, "clean_data/collapsed_data/2011.csv")
  write_csv(data_2012, "clean_data/collapsed_data/2012.csv")
  write_csv(data_2013, "clean_data/collapsed_data/2013.csv")
  write_csv(data_2014, "clean_data/collapsed_data/2014.csv")
  write_csv(data_2015, "clean_data/collapsed_data/2015.csv")  