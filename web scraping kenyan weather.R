## load the libraries
library(dplyr)
library(rvest)
library(stringr)

## url to scrap
url <- "https://meteo.go.ke/forecast/todays-weather"

## retrieve the url in R
weather_page <- read_html(url)

weather_page

## check the nodes in the site using the SelectorGadget
## town
town <- weather_page %>% 
  html_nodes(".views-field-field-town .field-content") %>% 
  html_text()

## weather condition
weather_condition <- weather_page %>% 
  html_nodes(".weather-desc") %>% 
  html_text()

## minimum temperature
min_temperature <- weather_page %>% 
  html_nodes(".temp-detail:nth-child(1)") %>% 
  html_text() %>% 
  ## extract only digits from the string
  str_extract("\\d.") %>% 
  ## convert the characters to strings
  as.numeric()

## maximum temperature
max_temperature <- weather_page %>% 
  html_nodes(".temp-detail+ .temp-detail") %>% 
  html_text() %>% 
  str_extract("\\d.") %>% 
  as.numeric()

## create the weather data frame
weather_data <- tibble(town, weather_condition,
                       ## temperature is in degree celcius
                       min_temperature, max_temperature)

## summarize the weather condition and see which towns
## will have the most similar weather
weather_data %>% 
  count(weather_condition)

## it simply shows that most of the towns will have sunny intervals