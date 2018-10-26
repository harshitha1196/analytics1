#analysis of dataset mtcars using dplyr
#filename : dplyr-mtcars.R

library(dplyr)
?mtcars
#Structure of Data set
str(mtcars) #structure
dim(mtcars) #dimensions
names(mtcars) ;colnames(mtcars) #column names
rownames(mtcars) #rownames
summary(mtcars) #summary of dataset


#summary activities on mtcars
t1=table(mtcars$am) #how many cars have auto transm
pie(t1)
19/32*360
pie(t1, labels = c('Auto', 'Manual'))
(t2=table(mtcars$gear))
pie(t2, labels = c('3 gear','4 gear','5 gear'))
pie(t3, labels = c('6 cylinder', '4 cylinder', '8 cylinder'))
barplot(t2)    
barplot(t2, col = 1:3)
barplot(t2, col = 1:3, horiz = T)
barplot(t2,col = c('green', 'blue', 'yellow'), xlab = 'Gear', ylab = 'no of cars', ylim=c(0,20))
title(main = 'distributing no of gears of cars', sub = 'no of gears')

#using dplyr %>% is chaining function
mtcars %>% select(mpg,gear) %>% slice(c(1:5, 10))
#select for columns, slice for rows
mtcars %>% arrange(mpg) #ascending order of mileage
mtcars %>% arrange(am, desc(mpg)) %>% select(am, mpg) #ascending order of am, descending order of mpg
