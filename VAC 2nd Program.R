library(robotstxt)
library(rvest)

url <- "https://www.imdb.com/search/title/?year=2022&amp;title_type=feature"
Path = paths_allowed (url)
web <- read_html(url)

name <- web %>% html_nodes(".lister-item-header a") %>%html_text()
View(name)

year <- web %>% html_nodes(".text-muted, unbold") %>%html_text() 
View(year)

duration <- web %>% html_nodes(".runtime") %>%html_text()
View (duration)

rating <- web %>% html_nodes(".ratings-imdb-rating strong") %>%html_text()
View(rating)

imdb <- data.frame(name, year, duration, rating)
View(imdb)

write.csv(imdb, "mov.csv")
