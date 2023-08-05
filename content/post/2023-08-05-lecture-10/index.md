---
title: Lecture 10
author: Point Estimation and Confidence Intervals
date: '2023-08-05'
slug: lecture-10
categories:
  - R
tags: []
---

## \# HANDLING MISSING VALUES & DATA VISUALIZATION

### handling Missing values

- After importing data, we have to clean them before visualizing or analysing them. A part of data cleaning we have discussed in the previous lectures.

- When cleaning data, identification of the missing values is also important. To do this, first find the proportion of missing values in each variable.

- To visualize the missing values, use the function md.pattern() in mice package

- The missing values in a data set can be handled in two ways.

  1)  **Listwise deletion** : Delete all observations which contain missing values.

  ## ii) **Imputation** : Replace missing values with suitable values. Refer R packages as `VIM`, `mice`, `Amelia`, `Hmisc`, `mi` and `missForest` for possible options. A details tutorial of using these packages are given [here](https://www.analyticsvidhya.com/blog/2016/03/tutorial-powerful-packages-imputing-missing-values/).

  ### Data Visualization using ggplot2

- `mice` R package: <https://datascienceplus.com/imputing-missing-data-with-r-mice-package/>

- ggplot2 by [Hadley Wickham](http://hadley.nz/), [Danielle Navarro](https://djnavarro.net/), and [Thomas Lin Pedersen](https://www.data-imaginist.com/): <https://ggplot2-book.org/index.html>

- Graphic Design with ggplot2, rstudio::conf(2022) Workshop by Cdric Scherer: <https://rstudio-conf-2022.github.io/ggplot2-graphic-design/>

- ggplot themes and background colour: <http://www.sthda.com/english/wiki/ggplot2-themes-and-background-colors-the-3-elements>

- ggplot2 legends: <http://www.sthda.com/english/wiki/ggplot2-legend-easy-steps-to-change-the-position-and-the-appearance-of-a-graph-legend-in-r-software>

<!-- -->

- ggplot legend title, position and labels: <https://www.datanovia.com/en/blog/ggplot-legend-title-position-and-labels/>

- Data Visualization with ggplot2: <https://www.publichealth.columbia.edu/sites/default/files/media/fdawg_ggplot2.html>

- ggplot2 - Essentials: <http://www.sthda.com/english/wiki/ggplot2-essentials>

- Colortool: <http://www.sthda.com/english/wiki/the-elements-of-choosing-colors-for-great-data-visualization-in-r>

- Gramme of Graphics: <https://pkg.garrickadenbuie.com/gentle-ggplot2/#1>

<!-- -->

- Dealing with missing values: <https://medium.com/coinmonks/dealing-with-missing-data-using-r-3ae428da2d17>
