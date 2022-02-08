# Monday

# Lazy eval ---------------------------------------------------------------
addten <- function(x,y,z){
  x+10
}
addten(3) 
addten(3,10,10)
addten(3,"nothing","missing_variable")

# Calling functions -------------------------------------------------------
my_example <- data.frame(A=c(5,4,7),B=c("D","G","H"))

my_numbers <- my_example[,1]
my_numbers_summed <- sum(my_example[,1])

# Many ways of doing the same thing ---------------------------------------

# snacks data frame for subsetting excercise
snacks <- data.frame(flavor=c("chocolate","strawberry","vanilla"),
                     calories=c(12,13,19),
                     in_stock=c(TRUE,TRUE,FALSE))
snacks

snacks[1]
subset(snacks,select= flavor)

snacks[,1]
snacks[1]$flavor
snacks$flavor
snacks[,'flavor']
snacks[,c('flavor')]
snacks[['flavor']]

# Assignment --------------------------------------------------------------

x <- 3
y = 3
3 -> z

x
y
z

assign('w',3)
assign("q",3)
`<-`(k,3)

w
q
k

# right-arrow assignment
msleep %>% 
  select(name,sleep_total) %>% 
  na.omit() -> msleep_subset

# Quotes ------------------------------------------------------------------

# c('dog","cat","mouse") # fails
c("dog","cat","mouse")
c("dog",'cat',"mouse")

print("she said yes")
#print("she said "yes"") # will throw error
print('she said "yes"') 


# Pipes -------------------------------------------------------------------
scores <- c(7,8,8,10,6,9,5,9,8)
round(mean(scores), digits = 2)

mn_scrs <- mean(scores)
rd_mn_scrs <- round(mn_scrs, digits = 2)
rd_mn_scrs

library(magrittr)
scores %>% 
  mean() %>% 
  round(digits=2)

scores %>% 
  mean %>% 
  round(digits=2)

scores |> 
  mean() |> 
  round(digits=2)

scores |> 
  mean |> 
  round(digits=2)

mtcars %<>%
  mutate(mpg=mpg*2)

mtcars <- mtcars %<% 
  mutate(mpg=mpg*2)
