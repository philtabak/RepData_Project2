R version 3.2.3 (2015-12-10) -- "Wooden Christmas-Tree"
Copyright (C) 2015 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> setwd("C:/Users/phil/Dropbox/R/Reproducible Research")
> storm <- read.csv("repdata_data_StormData.csv")
> head(storm)
  STATE__           BGN_DATE BGN_TIME TIME_ZONE COUNTY COUNTYNAME STATE  EVTYPE BGN_RANGE BGN_AZI BGN_LOCATI END_DATE END_TIME COUNTY_END COUNTYENDN
1       1  4/18/1950 0:00:00     0130       CST     97     MOBILE    AL TORNADO         0                                               0         NA
2       1  4/18/1950 0:00:00     0145       CST      3    BALDWIN    AL TORNADO         0                                               0         NA
3       1  2/20/1951 0:00:00     1600       CST     57    FAYETTE    AL TORNADO         0                                               0         NA
4       1   6/8/1951 0:00:00     0900       CST     89    MADISON    AL TORNADO         0                                               0         NA
5       1 11/15/1951 0:00:00     1500       CST     43    CULLMAN    AL TORNADO         0                                               0         NA
6       1 11/15/1951 0:00:00     2000       CST     77 LAUDERDALE    AL TORNADO         0                                               0         NA
  END_RANGE END_AZI END_LOCATI LENGTH WIDTH F MAG FATALITIES INJURIES PROPDMG PROPDMGEXP CROPDMG CROPDMGEXP WFO STATEOFFIC ZONENAMES LATITUDE LONGITUDE
1         0                      14.0   100 3   0          0       15    25.0          K       0                                         3040      8812
2         0                       2.0   150 2   0          0        0     2.5          K       0                                         3042      8755
3         0                       0.1   123 2   0          0        2    25.0          K       0                                         3340      8742
4         0                       0.0   100 2   0          0        2     2.5          K       0                                         3458      8626
5         0                       0.0   150 2   0          0        2     2.5          K       0                                         3412      8642
6         0                       1.5   177 2   0          0        6     2.5          K       0                                         3450      8748
  LATITUDE_E LONGITUDE_ REMARKS REFNUM
1       3051       8806              1
2          0          0              2
3          0          0              3
4          0          0              4
5          0          0              5
6          0          0              6
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

> storms_by_event <- group_by(storms, EVTYPE)
Error in group_by_(.data, .dots = lazyeval::lazy_dots(...), add = add) : 
  object 'storms' not found
> storms_by_event <- group_by(storm, EVTYPE)
> sumry <- summarise(storms_by_event, deaths = sum(FATALITIES))
> sorted <- arrange(sumry, desc(deaths))
> head(sumry)
Source: local data frame [6 x 2]

                 EVTYPE deaths
                 (fctr)  (dbl)
1    HIGH SURF ADVISORY      0
2         COASTAL FLOOD      0
3           FLASH FLOOD      0
4             LIGHTNING      0
5             TSTM WIND      0
6       TSTM WIND (G45)      0
> head(sorted)
Source: local data frame [6 x 2]

          EVTYPE deaths
          (fctr)  (dbl)
1        TORNADO   5633
2 EXCESSIVE HEAT   1903
3    FLASH FLOOD    978
4           HEAT    937
5      LIGHTNING    816
6      TSTM WIND    504
> sumry <- summarise(storms_by_event, deaths = sum(FATALITIES), inj = sum(INJURIES))
> head(sorted)
Source: local data frame [6 x 2]

          EVTYPE deaths
          (fctr)  (dbl)
1        TORNADO   5633
2 EXCESSIVE HEAT   1903
3    FLASH FLOOD    978
4           HEAT    937
5      LIGHTNING    816
6      TSTM WIND    504
> sorted <- arrange(sumry, desc(deaths))
> head(sorted)
Source: local data frame [6 x 3]

          EVTYPE deaths   inj
          (fctr)  (dbl) (dbl)
1        TORNADO   5633 91346
2 EXCESSIVE HEAT   1903  6525
3    FLASH FLOOD    978  1777
4           HEAT    937  2100
5      LIGHTNING    816  5230
6      TSTM WIND    504  6957
> View(sumry)
> View(sumry)
> View(storms_by_event)
> unique(storm$PROPDMGEXP)
 [1] K M   B m + 0 5 6 ? 4 2 3 h 7 H - 1 8
Levels:  - ? + 0 1 2 3 4 5 6 7 8 B h H K m M
> summary(storm$PROPDMGEXP)
            -      ?      +      0      1      2      3      4      5      6      7      8      B      h      H      K      m      M 
465934      1      8      5    216     25     13      4      4     28      4      5      1     40      1      6 424665      7  11330 
> storm2 <- arrange(storm, desc(PROPDMGEXP))
> View(storm2)
> source('C:/Users/phil/Dropbox/R/Reproducible Research/scratch.r', echo=TRUE)

> calcDollars <- function(num, code){
+         
+         return_val <- as.double(num)
+         
+         if(code == "B"){
+                 return .... [TRUNCATED] 
> calcDollars(10,"B")
[1] 1e+10
> calcDollars(10,"h")
[1] 10
> calcDollars(10,"H")
[1] 1000
> calcDollars(10,"H")
[1] 1000
> calcDollars(10,"h")
[1] 10
> source('C:/Users/phil/Dropbox/R/Reproducible Research/scratch.r', echo=TRUE)

> calcDollars <- function(num, code){
+         
+         return_val <- as.double(num)
+         code <- toupper(code)
+         
+         if(code = .... [TRUNCATED] 
> calcDollars(10,"h")
[1] 1000
> calcDollars(10,"k")
[1] 10
> calcDollars(10,"K")
[1] 10
> calcDollars(10,"K")
[1] 10
> source('C:/Users/phil/Dropbox/R/Reproducible Research/scratch.r', echo=TRUE)

> calcDollars <- function(num, code){
+         
+         return_val <- as.double(num)
+         code <- toupper(code)
+         
+         if(code = .... [TRUNCATED] 
> calcDollars(10,"K")
[1] 10000
> calcDollars(10,"k")
[1] 10000
> calcDollars(2.250,"k")
[1] 2250
> ?switch
> storm2 <- mutate(storm, prop_dollars = calcDollars(PROPDMG, PROPDMGEXP))
Warning messages:
1: In if (code == "B") { :
  the condition has length > 1 and only the first element will be used
2: In if (code == "M") { :
  the condition has length > 1 and only the first element will be used
3: In if (code == "K") { :
  the condition has length > 1 and only the first element will be used
4: In if (code == "H") { :
  the condition has length > 1 and only the first element will be used
> View(storm2)
> source('C:/Users/phil/Dropbox/R/Reproducible Research/scratch.r', echo=TRUE)

> calcDollars <- function(num, code){
+         
+         num <= as.double(num)
+         return_val <- as.double(num)
+         code <- toupper(code .... [TRUNCATED] 
> source('C:/Users/phil/Dropbox/R/Reproducible Research/scratch.r', echo=TRUE)

> calcDollars <- function(num, code){
+         
+         num <= as.double(num)
+         return_val <- as.double(num)
+         code <- toupper(code .... [TRUNCATED] 
> storm2 <- mutate(storm, prop_dollars = calcDollars(PROPDMG, PROPDMGEXP))
Warning messages:
1: In if (code == "B") { :
  the condition has length > 1 and only the first element will be used
2: In if (code == "M") { :
  the condition has length > 1 and only the first element will be used
3: In if (code == "K") { :
  the condition has length > 1 and only the first element will be used
4: In if (code == "H") { :
  the condition has length > 1 and only the first element will be used
> View(storm2)
> 