# installing package haven here to read sav. file
library(haven)

# Read existing csv files in to clean. 
data_95_96 <- read.csv("clean_data/initial_data/95-96.csv", stringsAsFactors = FALSE)
data_96_97 <- read.csv("clean_data/initial_data/96-97.csv", stringsAsFactors = FALSE)
data_97_98 <- read.csv("clean_data/initial_data/97-98.csv", stringsAsFactors = FALSE)
data_1999 <- read.csv("clean_data/initial_data/1999.csv", stringsAsFactors = FALSE)
data_2000 <- read.csv("clean_data/initial_data/2000.csv", stringsAsFactors = FALSE)
data_2001 <- read.csv("clean_data/initial_data/2001.csv", stringsAsFactors = FALSE)
data_2002 <- read.csv("clean_data/initial_data/2002.csv", stringsAsFactors = FALSE)
data_2003 <- read.csv("clean_data/initial_data/2003.csv", stringsAsFactors = FALSE)
data_2004 <- read.csv("clean_data/initial_data/2004.csv", stringsAsFactors = FALSE)
data_2005 <- read.csv("clean_data/initial_data/2005.csv", stringsAsFactors = FALSE)
data_2006 <- read.csv("clean_data/initial_data/2006.csv", stringsAsFactors = FALSE) 
data_2007 <- read.csv("clean_data/initial_data/2007.csv", stringsAsFactors = FALSE) 
data_2008 <- read.csv("clean_data/initial_data/2008.csv", stringsAsFactors = FALSE) 
data_2009 <- read.csv("clean_data/initial_data/2009.csv", stringsAsFactors = FALSE) 
data_2010 <- read.csv("clean_data/initial_data/2010.csv", stringsAsFactors = FALSE) 
data_2011 <- read.csv("clean_data/initial_data/2011.csv", stringsAsFactors = FALSE) 
data_2012 <- read.csv("clean_data/initial_data/2012.csv", stringsAsFactors = FALSE) 
data_2013 <- read.csv("clean_data/initial_data/2013.csv", stringsAsFactors = FALSE) 
data_2014 <- read.csv("clean_data/initial_data/2014.csv", stringsAsFactors = FALSE) 
data_2015 <- read.csv("clean_data/initial_data/2015.csv", stringsAsFactors = FALSE) 

# add years to data
data_95_96$YEAR <- 1996
data_96_97$YEAR <- 1997
data_97_98$YEAR <- 1998
data_1999$YEAR <- 1999
data_2000$YEAR <- 2000
data_2001$YEAR <- 2001
data_2002$YEAR <- 2002
data_2003$YEAR <- 2003
data_2004$YEAR <- 2004
data_2005$YEAR <- 2005
data_2006$YEAR <- 2006
data_2007$YEAR <- 2007
data_2008$YEAR <- 2008
data_2009$YEAR <- 2009
data_2010$YEAR <- 2010
data_2011$YEAR <- 2011
data_2012$YEAR <- 2012
data_2013$YEAR <- 2013
data_2014$YEAR <- 2014
data_2015$YEAR <- 2015

# data is corrupted here :(
data_2005$USSCIDN <- NA

library(tidyverse)

# Selecting the variables that I'm using 
data_subset_95_96 <- data_95_96 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_96_97 <- data_96_97 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_97_98 <- data_97_98 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_1999 <- data_1999 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2000 <- data_2000 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2001 <- data_2001 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2002 <- data_2002 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2003 <- data_2003 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2004 <- data_2004 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2005 <- data_2005 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2006 <- data_2006 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2007 <- data_2007 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2008 <- data_2008 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2009 <- data_2009 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2010 <- data_2010 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2011 <- data_2011 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2012 <- data_2012 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2013 <- data_2013 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2014 <- data_2014 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2015 <- data_2015 %>%
 select(USSCIDN, MONRACE, YEAR, MONSEX, CITIZEN, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

# continue to clean_data.r for data selection 

write_csv(data_subset_95_96, "clean_data/selected_data/95-96.csv")
write_csv(data_subset_96_97, "clean_data/selected_data/96-97.csv")
write_csv(data_subset_97_98, "clean_data/selected_data/97-98.csv")
write_csv(data_subset_1999, "clean_data/selected_data/1999.csv")
write_csv(data_subset_2000, "clean_data/selected_data/2000.csv")
write_csv(data_subset_2001, "clean_data/selected_data/2001.csv")
write_csv(data_subset_2002, "clean_data/selected_data/2002.csv")
write_csv(data_subset_2003, "clean_data/selected_data/2003.csv")
write_csv(data_subset_2004, "clean_data/selected_data/2004.csv")
write_csv(data_subset_2005, "clean_data/selected_data/2005.csv")
write_csv(data_subset_2006, "clean_data/selected_data/2006.csv")
write_csv(data_subset_2007, "clean_data/selected_data/2007.csv")
write_csv(data_subset_2008, "clean_data/selected_data/2008.csv")
write_csv(data_subset_2009, "clean_data/selected_data/2009.csv")
write_csv(data_subset_2010, "clean_data/selected_data/2010.csv")
write_csv(data_subset_2011, "clean_data/selected_data/2011.csv")
write_csv(data_subset_2012, "clean_data/selected_data/2012.csv")
write_csv(data_subset_2013, "clean_data/selected_data/2013.csv")
write_csv(data_subset_2014, "clean_data/selected_data/2014.csv")
write_csv(data_subset_2015, "clean_data/selected_data/2015.csv")
