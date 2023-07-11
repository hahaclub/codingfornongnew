library(rvest)
library(tidyverse)
library(dplyr)
##staticwebsite

url <-"https://www.imdb.com/search/title/?groups=top_100&sort=user_rating,desc"

movie_name <- url %>%
  read_html() %>%
  html_nodes("h3.lister-item-header") %>%
  html_text2() # remove character




movie_rating <- url %>%
  read_html() %>%
  html_nodes("div.ratings-imdb-rating") %>%
  html_text2() %>%
  as.numeric()# remove character


# ดึงโหวตออกมา

movie_vote <- url %>%
  read_html() %>%
  html_nodes("p.sort-num_votes-visible") %>%
  html_text2()



imdb_df <- data.frame (
  movie_name,
  movie_rating,
  movie_vote
)

df2 <- imdb_df %>%
  separate(movie_vote, sep=" \\| ", into=c("votes", "gross", "tops")) %>%
  View()




