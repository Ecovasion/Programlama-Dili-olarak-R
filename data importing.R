

author: "Dr. Burcu MESTAV"

##Data importing####

## Kullanılacak paketler
library(tidyverse)
library(readr)
library(readxl)
library(skimr)
library(tibble)
library(tidyr)

##readr####
nobel <- read_csv(file = "data/nobel.csv")
glimpse(nobel)
skim(nobel)


edi_airbnb <- read_csv("data/edi-airbnb.csv")
names(edi_airbnb)

#değişken isimlerinde boşluk olmamalı aksi takdirde fonksiyon çalışmaz
ggplot(edi_airbnb, aes(x = Number_of_bathrooms, y = Price)) +
  geom_point()

#sütun isimlerini değiştirebilirsiniz.
edi_airbnb_col_names <- read_csv("data/edi-airbnb.csv",
                                 col_names = c("id", "price", "neighbourhood", "accommodates",
                                               "bathroom", "bedroom", "bed", 
                                               "review_scores_rating", "n_reviews", "url"))

names(edi_airbnb_col_names)

##readxl####
sales <- read_excel("data/sales.xlsx", skip = 3, col_names = c("id", "n"))
sales


