---
title: Lecture 6
author: Point Estimation and Confidence Intervals
date: '2023-08-05'
slug: lecture-6
categories:
  - R
tags: []
---

# PENALIZED REGRESSION & LARS ALGORITHM
------------------------------------------------------------------------
### Penalized Regression

-   Use the concept of penalizing or reducing the impact of certain variables in the model.

-   More suitable for large multivariate data sets containing a number of variables superior to the number of samples.

-   Also useful for selecting key variables from a large set of variables.

-   Penalized regression models improve prediction in new data by shrinking the size of coefficients and retaining those with coefficients greater than zero.
------------------------------------------------------------------------
### Penalized Regression Methods

-   Includes a penalty term to reduce (i.e. shrink) the coefficient values towards zero.

-   As such, the variables with minor contribution to the outcome have their coefficients close to zero.

-   Shrinkage methods:

    1.  Ridge Regression

    2.  Lasso Regression

    3.  Elastic net Regression
------------------------------------------------------------------------
### Redge Regression

-   We use ridge regression to tackle the multicollinearity problem.

-   Due to multicollinearity, the model estimates (least square) see a large variance.

-   Ridge regression is a method by which we add a degree of bias to the regression estimates.

-   Ridge regression performs L2 regularization which adds a penalty equivalent to the sum of the squared coefficients and tries to minimize them.

-   The ridge regression minimizes,

    `$$∑(Yi−Y^i)2+λ∑β2j$$`

-   <https://journal.r-project.org/archive/2018/RJ-2018-060/RJ-2018-060.pdf>
------------------------------------------------------------------------
### LASSO Regression

-   Lasso stands for Least Absolute Shrinkage and Selection Operator.

-   It shrinks the regression coefficients toward zero by penalizing the regression model with a penalty term called L1-norm.

    `$$∑(Yi−Y^i)2+λ∑|βj|$$`

-   One advantage of lasso regression over ridge regression, is that it produces simpler and more interpretable models that incorporate only a reduced set of the predictors.

-   However, neither ridge regression nor the lasso will universally dominate the other.

-   Generally, lasso might perform better in a situation where some of the predictors have large coefficients, and the remaining predictors have very small coefficients.

-   Ridge regression will perform better when the outcome is a function of many predictors, all with coefficients of roughly equal size.
------------------------------------------------------------------------
### Elastic Net Regression

-   Elastic Net produces a regression model that is penalized with both the L1-norm and L2-norm.

-   The objective of this method is to effectively shrink coefficients (like in ridge regression) and to set some coefficients to zero (as in LASSO).

-   The elastic net regression can be easily computed using the `caret` workflow, which invokes the `glmnet` package.

-   The caret packages tests a range of possible alpha and lambda values, then selects the best values for lambda and alpha, resulting to a final model that is an elastic net model.
------------------------------------------------------------------------
### LARS Algorithm

-   Least-angle regression (LARS) is an algorithm for fitting linear regression models to high-dimensional data.

-   It is a model selection method for linear regression.

-   At each step, LARS finds the attribute which is most highly correlated to the target value.
------------------------------------------------------------------------
### Algorithm

-   Normalize all values to have zero mean and unit variance.

-   Find a variable that is most highly correlated to the residual. Move the regression line in this direction until we reach another variable that has the same or higher correlation.

-   When we have two variables that have the same correlation, move the regression line at an angle that is in between (i.e., least angle between the two variables).

-   Continue this until all of our data is exhausted or until you think the model is big and \'general\' enough.
------------------------------------------------------------------------
### Advantages of Using LARS

-   Computationally as fast as forward selection but may sometimes be more accurate.

-   Numerically very efficient when the number of features is much larger than the number of data instances.

-   It can easily be modified to produce solutions for other estimators.
------------------------------------------------------------------------
### Disadvantages of Using LARS

-   LARS is highly sensitive to noise and can produce unpredictable results sometimes.
------------------------------------------------------------------------
### Useful Links

-   <http://www.sthda.com/english/articles/37-model-selection-essentials-in-r/153-penalized-regression-essentials-ridge-lasso-elastic-net/>

-   <https://www.r-bloggers.com/2020/05/simple-guide-to-ridge-regression-in-r/>

-   <https://www.pluralsight.com/guides/linear-lasso-and-ridge-regression-with-r>

-   <https://rpubs.com/beane/n6_1>

-   <https://cran.r-project.org/web/packages/lars/lars.pdf>
