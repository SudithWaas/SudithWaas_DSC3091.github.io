---
title: Lecture 8
author: Point Estimation and Confidence Intervals
date: '2023-08-05'
slug: lecture-8
categories:
  - R
tags: []
---

# DATA WRANGLING I
------------------------------------------------------------------------
### Data Wrangling

Data wrangling makes it easier to get your data into R in a useful form for visualisation and modelling. Here, we discuss the following three tools.

-   **tibbles** the variant of the data frame.

-   **Data import** in rectangular formats.

-   **tidy data** a consistent way of storing your data that makes transformation, visualisation, and modelling easier.
------------------------------------------------------------------------
### Tibbles 

Tibbles are data frames, which makes easier for data wrangling. Tibbles can be created using the `tibble` package. Tibbles have an enhanced [`print()`](https://rdrr.io/r/base/print.html) method which can be used with large datasets containing complex objects.
------------------------------------------------------------------------
### Tibbles vs. Data Frames

Tibbles shows only the first 10 rows, and all the columns fit on screen, which makes it much easier to work with large data. In addition to its name, each column reports its data type.
------------------------------------------------------------------------
### Data Import

o read plain-text rectangular files into R, use the `readr` package, which is part of the core tidyverse.

-   `read_csv()` reads comma delimited files, `read_csv2()` reads semicolon separated files, `read_tsv()` reads tab delimited files, and `read_delim()` reads in files with any delimiter.

-   `read_fwf()` reads fixed width files. You can specify fields either by their widths with `fwf_widths()` or their position with `fwf_positions()`. `read_table()` reads a common variation of fixed width files where columns are separated by white space.

-   `read_log()` reads Apache style log files. (But also check out [webreadr](https://github.com/Ironholds/webreadr) which is built on top of `read_log()` and provides many more helpful tools.)

Suppose you have a csv file named `heights` in a folder called data. Then, to read it use

`heights<-read_csv("data/heights.csv")`\
If some meta data included in the first two lines of the data set, and you want to skip those two lines, use

`heights<-read_csv("data/heights.csv", skip=2)`

-   If the variable names are not included in the data set, you can specify them and read the data as\
    `heights<-read_csv("data/heights.csv", col_names = c("x", "y", "z"))`

-   If the missing values are indicated as \".\" in the data set, you can change them to NA as below:\
    `heights<-read_csv("data/heights.csv", NA= ".")`

-   If you data contains other characters such as \$100, 20% or etc, then to convert them to data use `parse_number()` function.

-   To write dates in a given format, you can use `parse_date()` function.
------------------------------------------------------------------------
### Tidy Data

In tidy data

-   each variable forms a column

-   each observation forms a row

-   each cell is a single measurement

When working with tidy data, we can use the same tools in similar ways for different data sets.

`dplyr`, `ggplot2`, and all the other packages in the `tidyverse` are designed to work with tidy data.

What are the advantages of your data to be tidy?

-   The general advantage is that you can select one consistent way to store your data. If you have a consistent data structure, it\'s easier to learn the tools that work with it since they have an underlying uniformity.

-   When variables are in columns, you can use the vectorised nature of R. Most of the built-in R functions work with vectors of values.
------------------------------------------------------------------------
### Tidy Data (Missing Values)]

A value can be missing in two ways, **Explicitly** (i.e. flagged with `NA`), **Implicitly** (i.e. simply not present in the data).

In this data set, the return for the fourth quarter of 2015 is explicitly missing, and the return for the first quarter of 2016 is implicitly missing
------------------------------------------------------------------------
### Useful Links

-   Wickham, H (2014). *Tidy Data*. Journal of Statistical Software 58 (10). [jstatsoft.org/v59/i10/](http://www.jstatsoft.org/v59/i10/)

-   Grolemund, G & Wickham, H (2016). R for Data Science, [https://r4ds.had.co.nz](https://r4ds.had.co.nz/)

-   Introduction to Tidy Data in R: <https://stat2labs.sites.grinnell.edu/Handouts/rtutorials/IntroTidyData.html>

-   tidyr: <https://tidyr.tidyverse.org/>

-   A ModernDive into R and the Tidyverse: <https://moderndive.com/index.html>
