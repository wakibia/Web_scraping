# Web_scraping
This is a short repository showing how to perform web scraping in R using Rvest

## Web Scraping Kenya Meteorological Department
>- This tutorial shows how to scrape a weather website using r`rvest` package
>- The website can be accessed at [Kenya Meteorological Department](https://meteo.go.ke/forecast/todays-weather)
>- The towns whose wether have been included are only 24 but it's good to show how to scrape the data
## Web scraping procedure
>- You need to familiarise yourself with the **HTML and CSS language** which you can learn at [HTML Tutorials](https://www.w3schools.com/html/default.asp) and [CSS tutorials](https://www.w3schools.com/css/default.asp)
>- This will help you identifying the target nodes
>- Next you need to use the selectorGadget which is a google chrome extension and you can add it from [Selector gadget extension](https://chrome.google.com/webstore/detail/selectorgadget/mhjhnkcfbdhnjickkkdbjoemdmbfginb)
>- This is a video tutorial on how to use the selectorGadget [Video tutorial](https://selectorgadget.com/)
>- Finally you need to install the rvest package in R `install.packages("rvest")`
>- You can see some of the nodes and attributes among other things you can do to retrieve information from the site you have intended to scrape from [rvest tidyverse](https://rvest.tidyverse.org/articles/rvest.html)
## Variables we seek to get after performing web scraping
The variables we seek to get are:
>- Town
>- Weather Condition
>- Minimum Temperature
>- Maximum Temperature

We will finally create a data frame using these variables

Note that the site being scraped shows the most current weather conditions
