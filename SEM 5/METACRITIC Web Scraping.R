library(robotstxt)
library(rvest)

url <- "https://www.metacritic.com/browse/movies/score/metascore/all/filtered?sort=desc"
Path = paths_allowed (url)
web <- read_html(url)

name <- web %>% html_nodes(".title h3") %>%html_text()
View(name)

link <- web %>% html_nodes("a.title") %>% html_attr('href')
View(link)

metacritic <- data.frame(name, link)
View(metacritic)

write.csv(metacritic, "metacritic.csv")