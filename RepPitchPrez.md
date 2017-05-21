---
title       : Global Terrorism Deaths
subtitle    : Reproducible Pitch Presentation for Shiny App
author      : J. Hudlow
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

<br>
<br>
<br>
<br>
<br>
<br>
## Purpose of the App  
<br>
The Shiny app designed for this project provides an interactive way to compare deaths from terrorism over a period of 45 years in 25 countries which have had the highest total number of terrorism related deaths during the given time period. When the user selects one or more countries from a list of checkboxes, a plot with trendlines is generated, making it easy to see how deaths from terrorism have varied across time and geography.

---

## Global Terrorism Data Set
<br>
The data set used for this project was derived from the *Global Terrorism Database* in the **Ecdat** package. A preview of the first few rows and columns is provided below:


```r
tdeaths <- read.csv("tdeaths.csv")
head(tdeaths[1:8,1:8])
```

```
##   Year Annual.Avg. Afghanistan Algeria Angola Burundi Colombia El.Salvador
## 1 1970        3.88           0       0      0       0        0           0
## 2 1971        5.24           0       0      0       0        0           0
## 3 1972       15.36           0       0      0       0        1           0
## 4 1973       10.48           0       0      0       0        0           0
## 5 1974       10.20           0       0      0       0        0           0
## 6 1975       13.88           0       0      0       0        7           2
```

---
<br>
<br>
<br>
<br>
## Highest Death Tolls
<br>
The countries with the highest number of overall terrorism related deaths during this period were:
<br>
>1. Iraq - 58,855
>2. Afghanistan - 27,018
>3. Pakistan - 21,597

---

When these three countries are selected in the Shiny app we can see that the vast majority of these deaths have occured during the last third of the data set, which is the last 15 years.

![Terrorism Deaths in Iraq, Afghanistan, and Pakistan](\IAP.png)
