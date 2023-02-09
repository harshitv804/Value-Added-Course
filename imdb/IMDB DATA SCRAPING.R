library (robotstxt)
library (rvest)

Path= paths_allowed ("https://www.imdb.com/chart/top")

url<-"https://www.imdb.com/chart/top" 

my_html <-read_html(url)

my_table<- html_nodes (my_html, "table")

movie_table<- html_table(my_table)[[1]]

View (movie_table)

movies <- movie_table[, 2:3]
View (movies)

str(movies)

write.csv(movies,"imdb_scrap.csv")