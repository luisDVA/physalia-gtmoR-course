


library(gt)
gtcars

gtcars$trq_hp <- gtcars$trq+gtcars$hp

library(dplyr)
gtcars %>% mutate(trq_hp = trq+hp)

library(data.table)
gtcars.dt <- as.data.table(gtcars)

gtcars.dt[, trq_hp:= trq+hp]

gtcars.dt

https://twitter.com/alessiopassah2o/status/1038917415382515713?s=20



print("she said yes")
print("she said "yes"")
print('she said "yes"') 


library(here)


vec-tor <- c(1,3,4)
library(fs)
fs::dir_create("new-root")
fs::dir_create("new-root/scripts/")
fs::dir_create("new-root/data")
fs::dir_create("new-root/data2")
mydat <- data.frame(a=c(1,3,4,5,6),b=c(12,434,123,43,24))
write.csv(mydat,file = "new-root/data/mydat.csv")
dir_ls("new-root",recurse = T)
file_move("new-root/data/mydat.csv", "new-root/data2/mydat.csv")

library(tidyr)
library(readr)
library(dplyr)

fishexp <- read_csv("data/gene_expression.csv")

fishexp %>% pivot_longer(cols = c(2:4,6:8),names_to = "time",
                         values_to = "gene_expr")



# Challenge Day 3
library(dplyr)
library(readr)
library(purrr)
library(ggplot2)

airports <- read_csv("data/Airports.csv")
airports

airports$Country %>% unique %>% sort

australia <- airports[airports$Country=="Australia",]
australia_years <- australia$Year
australia_years

brazil <- airports[airports$Country=="Brazil",]
brazil_years <- brazil$Year
brazil_years

canada <- airports[airports$Country=="Canada",]
canada_years <- canada$Year
canada_years

china <-  airports[airports$Country=="China",]
china_years <- china$Year
china_years
duplicated(china_years)

china2016 <- china[china$Year==2016,] 
china2016busiest <- china2016[which(china2016$Rank==min(china2016$Rank)),]
china2016busiest

china2017 <- china[china$Year==2017,] 
china2017busiest <- china2017[which(china2017$Rank==min(china2017$Rank)),]
china2017busiest

china2018 <- china[china$Year==2018,] 
china2018busiest <- china2018[which(china2018$Rank==min(china2018$Rank)),]
china2018busiest


cy1 <- 
airports %>% group_by(Country,Year) %>% slice_max(Rank,n=1) %>% ungroup()
cy1

cy1  %>%  group_by(Country) %>% summarise(n_top_airports=n_distinct(Code)) %>% 
  filter(n_top_airports>1)

carscntry <- gtcars %>% group_by(ctry_origin) %>% group_split()

map(carscntry,~write_csv(.x,file=paste0("data/",unique(.x$ctry_origin),".csv")))

#walk(carscntry,
 #    write_csv(.x,file=paste0(names(.x),".csv")))

formula_to_function(~write_csv(x,file=paste0(names(.x),".csv")))


f <- function(x) {
  y <- x*0.26 
  round(y,1)
}

f2 <- function(x)  y <- (x*0.2885) y   

f2

f2(6)

#f <- function(x) x+4  x 

gt::gtcars %>% group_by(ctry_origin) %>% group_split()

whatth <- gt::gtcars %>% group_by(ctry_origin) %>% group_split()
whatth %>% class
gt::gtcars %>% group_by(ctry_origin) %>% group_split()


cars_country[[2]] %>% 
  select(model,ctry_origin,hp,msrp) %>% head
