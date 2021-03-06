---
title       : Developing Data Products Course Project
subtitle    : Higher Education Institution Count Application
author      : Kevin Kientz
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
--- 



## Objective

Write & deploy a shiny app. The application must include:

* Some form of input (widget: textbox, radio button, checkbox, etc.)
* Some operation on the ui input in sever.R
* Some reactive output displayed as a result of server calculations
* You must also include enough documentation so that a novice user could use your application
* The documentation should be at the Shiny website itself. Do not post to an external link


--- .class #id 

## Project Description

The app I developed allows you to:

* Determine how many institutions of higher education exist within a selected state
* Benchmark that state's number of institutions against other states
* See the state that represents the median number of states (the state with the 25th highest # of institutions - right in the middle)


Use this app at https://kjkientz.shinyapps.io/ShinyProject/


--- .class #id

## Higher Education State Institution Counts

The following code allows me to load in the most recent (2014) dataset of institutions of higher education from the National Center for Education Statistics. The state_df data frame aggregates the number of institutions contained within each state or province.


```r
temp <- tempfile()
download.file("http://nces.ed.gov/ipeds/datacenter/data/HD2014.zip",temp, mode="wb")
unzip(temp, "hd2014.csv")
dd <- read.table("hd2014.csv", sep=",", header=T)

state_df <- as.data.frame(table(dd$STABBR))

institutionsByState <- function(state) state_df[state_df$Var1==state,2]
```

--- .class #id


## Higher Education State Institution Counts

The shiny app is designed to allow a user to select a state and you can immediately see how many institutions exist within that state. For example, if the user selects "California", we can see how many institutions are in California: 


```
## Error in institutionsByState("CA"): object 'state_df' not found
```


Give it a shot at https://kjkientz.shinyapps.io/ShinyProject/


