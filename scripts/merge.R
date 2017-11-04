# read in collapsed and clean data

data_95_96 <- read.csv("clean_data/collapsed_data/95-96.csv")
data_96_97 <- read.csv("clean_data/collapsed_data/96-97.csv")
data_97_98 <- read.csv("clean_data/collapsed_data/97-98.csv")
data_1999 <- read.csv("clean_data/collapsed_data/1999.csv")
data_2000 <- read.csv("clean_data/collapsed_data/2000.csv")
data_2001 <- read.csv("clean_data/collapsed_data/2001.csv")
data_2002 <- read.csv("clean_data/collapsed_data/2002.csv")
data_2003 <- read.csv("clean_data/collapsed_data/2003.csv")
data_2004 <- read.csv("clean_data/collapsed_data/2004.csv")
data_2005 <- read.csv("clean_data/collapsed_data/2005.csv")
data_2006 <- read.csv("clean_data/collapsed_data/2006.csv") 
data_2007 <- read.csv("clean_data/collapsed_data/2007.csv") 
data_2008 <- read.csv("clean_data/collapsed_data/2008.csv") 
data_2009 <- read.csv("clean_data/collapsed_data/2009.csv") 
data_2010 <- read.csv("clean_data/collapsed_data/2010.csv") 
data_2011 <- read.csv("clean_data/collapsed_data/2011.csv") 
data_2012 <- read.csv("clean_data/collapsed_data/2012.csv") 
data_2013 <- read.csv("clean_data/collapsed_data/2013.csv") 
data_2014 <- read.csv("clean_data/collapsed_data/2014.csv") 
data_2015 <- read.csv("clean_data/collapsed_data/2015.csv") 

# binding by rows
data_bind <- bind_rows(data_95_96, data_96_97, data_97_98, data_1999,
                       data_2000, data_2001, data_2002, data_2003,
                       data_2004, data_2005, data_2006, data_2007,
                       data_2008, data_2009, data_2010, data_2011,
                       data_2012, data_2013, data_2014, data_2015)

write_csv(data_bind, "clean_data/merged_data/95-15.csv")
