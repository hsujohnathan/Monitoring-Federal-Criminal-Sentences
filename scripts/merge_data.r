# this file explores merging datasets in chronological order after selecting the columns and coercing calues

load("~/monitoring-federal-criminal-sentences/.RData")

# Selecting the variables that I'm using 
data_subset_95_96 <- data_95_96 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_96_97 <- data_96_97 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_97_98 <- data_97_98 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_1999 <- data_1999 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2000 <- data_2000 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2001 <- data_2001 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2002 <- data_2002 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2003 <- data_2003 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2004 <- data_2004 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2005 <- data_2005 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2006 <- data_2006 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2007 <- data_2007 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)
#-------
data_subset_2008 <- data_2008 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2009 <- data_2009 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2010 <- data_2010 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2011 <- data_2011 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2012 <- data_2012 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2013 <- data_2013 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2014 <- data_2014 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

data_subset_2015 <- data_2015 %>%
  select(MONRACE, YEAR, MONSEX, EDUCATN, AGE, STATMIN, STATMAX, DISPOSIT, TOTPRISN, XFOLSOR, XCRHISSR, DISTRICT, MONCIRC)

# Next we will coerce the data year by year 

# 95-96
  data_subset_95_96$AGE <- as.numeric(paste(data_subset_95_96$AGE))
  data_subset_95_96$STATMIN <- as.numeric(paste(data_subset_95_96$STATMIN))
  data_subset_95_96$STATMAX <- as.numeric(paste(data_subset_95_96$STATMAX))
  data_subset_95_96$TOTPRISN <- as.numeric(paste(data_subset_95_96$TOTPRISN))
  data_subset_95_96$XFOLSOR <- as.numeric(paste(data_subset_95_96$XFOLSOR))
  data_subset_95_96$XCRHISSR <- as.numeric(paste(data_subset_95_96$XCRHISSR))

# 96-97
  data_subset_96_97$AGE <- as.numeric(paste(data_subset_96_97$AGE))
  data_subset_96_97$STATMIN <- as.numeric(paste(data_subset_96_97$STATMIN))
  data_subset_96_97$STATMAX <- as.numeric(paste(data_subset_96_97$STATMAX))
  data_subset_96_97$TOTPRISN <- as.numeric(paste(data_subset_96_97$TOTPRISN))
  data_subset_96_97$XFOLSOR <- as.numeric(paste(data_subset_96_97$XFOLSOR))
  data_subset_96_97$XCRHISSR <- as.numeric(paste(data_subset_96_97$XCRHISSR))
  
# 97-98 
  data_subset_97_98$AGE <- as.numeric(paste(data_subset_97_98$AGE))
  data_subset_97_98$STATMIN <- as.numeric(paste(data_subset_97_98$STATMIN))
  data_subset_97_98$STATMAX <- as.numeric(paste(data_subset_97_98$STATMAX))
  data_subset_97_98$TOTPRISN <- as.numeric(paste(data_subset_97_98$TOTPRISN))
  data_subset_97_98$XFOLSOR <- as.numeric(paste(data_subset_97_98$XFOLSOR))
  data_subset_97_98$XCRHISSR <- as.numeric(paste(data_subset_97_98$XCRHISSR))

# 1999
  data_subset_1999$STATMIN <- as.numeric(paste(data_subset_1999$STATMIN))
  data_subset_1999$STATMAX <- as.numeric(paste(data_subset_1999$STATMAX))
  data_subset_1999$TOTPRISN <- as.numeric(paste(data_subset_1999$TOTPRISN))
  data_subset_1999$XFOLSOR <- as.numeric(paste(data_subset_1999$XFOLSOR))
  data_subset_1999$XCRHISSR <- as.numeric(paste(data_subset_1999$XCRHISSR))
  
# 2000
  data_subset_2000$STATMIN <- as.numeric(paste(data_subset_2000$STATMIN))
  data_subset_2000$STATMAX <- as.numeric(paste(data_subset_2000$STATMAX))
  data_subset_2000$TOTPRISN <- as.numeric(paste(data_subset_2000$TOTPRISN))
  data_subset_2000$XFOLSOR <- as.numeric(paste(data_subset_2000$XFOLSOR))
  data_subset_2000$XCRHISSR <- as.numeric(paste(data_subset_2000$XCRHISSR))
  
# merge data 

data_subset_bind <- rbind(data_subset_95_96,
                          data_subset_96_97,
                          data_subset_97_98,
                          data_subset_1999,
                          data_subset_2000,
                          data_subset_2001,
                          data_subset_2002,
                          data_subset_2003,
                          data_subset_2004,
                          data_subset_2005,
                          data_subset_2006,
                          data_subset_2007,
                          data_subset_2008,
                          data_subset_2009,
                          data_subset_2010,
                          data_subset_2011,
                          data_subset_2012,
                          data_subset_2013,
                          data_subset_2014,
                          data_subset_2015)

data_subset_bind$TOTPRISN <- as.numeric(paste(data_subset_bind$TOTPRISN))
race.lm <- lm(TOTPRISN ~ as.factor(EDUCATN) + AGE + as.factor(DISPOSIT) + XFOLSOR * XCRHISSR + DISTRICT + MONCIRC + as.factor(MONSEX) + YEAR + as.factor(MONRACE), data_subset_bind)
summary(race.lm)
# export data variable data folder
  
write.csv(data_subset_95_96, "clean_data/variable_data/95-96.csv")
write.csv(data_subset_96_97, "clean_data/variable_data/96-97.csv")
write.csv(data_subset_97_98, "clean_data/variable_data/97-98.csv")
write.csv(data_subset_1999, "clean_data/variable_data/1999.csv")
write.csv(data_subset_2000, "clean_data/variable_data/2000.csv")
write.csv(data_subset_2001, "clean_data/variable_data/2001.csv")
write.csv(data_subset_2002, "clean_data/variable_data/2002.csv")
write.csv(data_subset_2003, "clean_data/variable_data/2003.csv")
write.csv(data_subset_2004, "clean_data/variable_data/2004.csv")
write.csv(data_subset_2005, "clean_data/variable_data/2005.csv")
write.csv(data_subset_2006, "clean_data/variable_data/2006.csv")
write.csv(data_subset_2007, "clean_data/variable_data/2007.csv")
write.csv(data_subset_2008, "clean_data/variable_data/2008.csv")
write.csv(data_subset_2009, "clean_data/variable_data/2009.csv")
write.csv(data_subset_2010, "clean_data/variable_data/2010.csv")
write.csv(data_subset_2011, "clean_data/variable_data/2011.csv")
write.csv(data_subset_2012, "clean_data/variable_data/2012.csv")
write.csv(data_subset_2013, "clean_data/variable_data/2013.csv")
write.csv(data_subset_2014, "clean_data/variable_data/2014.csv")
write.csv(data_subset_2015, "clean_data/variable_data/2015.csv")


