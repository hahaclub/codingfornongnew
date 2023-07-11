## ggplot2 
## library tidyverse
library(tidyverse)


##first plot
ggplot(data= mtcars, mapping = aes(x = hp , y = mpg)) + 
  geom_point() + 
  geom_smooth() +
  geom_rug()

##แบบนี้สั้นกว่า

ggplot(mtcars,aes (hp,mpg)) +
  geom_point(size = 3, col = "blue",alpha = 0.2)

ggplot (mtcars,aes(hp)) +
  geom_histogram(bins = 10, fill = "red", alpha = 0.5)

ggplot (mtcars,aes(hp)) +
  geom_boxplot()


p <- ggplot (mtcars,aes(hp))

p + geom_histogram()
p + geom_density()
p + geom_boxplot()

## boxplot 2 variable

diamonds %>%
  count(cut)

ggplot(diamonds , aes(cut))+
  geom_bar(fill = "#42daf5")

diamonds %>%
  count(color)

ggplot(diamonds , aes(cut,fill = color))+
  geom_bar(position = "dodge")

ggplot(diamonds , aes(cut,fill = color))+
  geom_bar(position = "fill")
##นับดูเป็นเปอร์เซนต์

## SCATTER PLOT

ggplot (diamonds, aes(carat,price)) +
  geom_point()


##วิธีการสุ่่มตัวอย่าง
##set.seed ล็อกตัวเลือกสุ่ม
set.seed (99)
small_diamonds <- sample_n (diamonds, 5000)

ggplot (small_diamonds, aes(carat,price)) +
  geom_point()


### FACET : small multiple

ggplot (small_diamonds, aes(carat,price)) +
  geom_point() +
  facet_wrap( ~color)
##อยากให้แสดงแค่ 4

ggplot (small_diamonds, aes(carat,price)) +
  geom_point() +
  geom_smooth(method = "lm", col = "red") +
  facet_wrap( ~color, ncol = 2) +
  theme_minimal()+
  labs(title = "Relation ship between carat and price by color",
       x= "Carat",
       y= "Price BUSD",
       caption = "Source : Diamonds from ggplot2 package")

ggplot (small_diamonds, aes(carat,price)) +
  geom_point() 


##final Ex.
ggplot (small_diamonds, aes(carat,price , col= cut)) +
  geom_point(size = 1) +
  facet_wrap(~color , ncol = 2)
