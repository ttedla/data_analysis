
# -------------------------------------------------------------------------

      # linear regression - 01

# -------------------------------------------------------------------------

      # packages

# -------------------------------------------------------------------------

library(tidyverse)
library(modelr)
library(broom)

# -------------------------------------------------------------------------

# Load data (remove row numbers included as X1 variable)
advertising <- read_csv("~/data_analysis/regression/Advertising.csv") %>%
  select(-X1)

# -------------------------------------------------------------------------

advertising

# -------------------------------------------------------------------------

      # Preparing Our Data

# -------------------------------------------------------------------------

      # Initial discovery of relationships is usually done with a 
      # training set while a test set is used for evaluating whether 
      # the discovered relationships hold.

# -------------------------------------------------------------------------

      # For the time being we'll use a conventional 60% / 40% split 
      # where we training our model on 60% of the data and then test
      # the model performance on 40% of the data that is withheld.

# -------------------------------------------------------------------------

set.seed(123)
# generate a logicals of size nrow(advertising), 60% T and 40% F
sample <- sample(c(TRUE, FALSE), nrow(advertising), replace = T, prob = c(0.6,0.4))

# using the logical sample 60% of the data 
train <- advertising[sample, ]
test <- advertising[!sample, ]

# -------------------------------------------------------------------------

        # Simple Linear Regression

# -------------------------------------------------------------------------

# Simple linear regression lives up to its name: it is a very straightforward
# approach for predicting a quantitative response Y on the basis of a single
# predictor variable X. 

# -------------------------------------------------------------------------

      # It assumes that there is approximately a linear relationship between 
      # X and Y. Using our advertising data, suppose we wish to model the
      # linear relationship between the TV budget and sales. 
      # We can write this as:
      # Y=β0+β1X+ϵ
      #  Y is sales 
      #  X is TV budget 
      #  β0 intercept
      # β1 is slope term
      # ϵ is the error term 

# -------------------------------------------------------------------------

        # Model Building
    # To build this model in R we use the formula notation of Y∼X.

# -------------------------------------------------------------------------

model1 <- lm(Sales ~ TV, data = train)

# -------------------------------------------------------------------------

summary(model1)

# -------------------------------------------------------------------------

tidy(model1)

# -------------------------------------------------------------------------

# Y=6.76 + 0.05X+ Error

# -------------------------------------------------------------------------

# In other words, our intercept estimate is 6.76 so when the TV advertising 
# budget is zero we can expect sales to be 6,760 (remember we’re 
# operating in units of 1,000). And for every $1,000 increase in the TV
# advertising budget we expect the average increase in sales to be 50 units.

# -------------------------------------------------------------------------

confint(model1)

# -------------------------------------------------------------------------

# Our results show us that our 95% confidence interval 
# for β1(TV) is [.043, .057]. Thus, since zero is not in
# this interval we can conclude that as the TV advertising
# budget increases by $1,000 we can expect the sales to increase
# by 43-57 units. This is also supported by the t-statistic provided
# by our results, which are computed by

# -------------------------------------------------------------------------

      # Assessing Model Accuracy

# -------------------------------------------------------------------------

      # Next, we want to understand the extent to which 
      # the model fits the data. This is typically referred
      # to as the goodness-of-fit. We can measure this quantitatively
      # by assessing three things:
          # Residual standard error
          #R squared (R2)
          # F-statistic
#RSA can be found at the end of summary or we can use sigma
sigma(model1)

# -------------------------------------------------------------------------

# An RSE value of 3.2 means the actual sales in each market 
# will deviate from the true regression line by approximately
# 3,200 units, on average. Is this significant? Well, that’s 
# subjective but when compared to the average value of sales
# over all markets the percentage error is 22%:

# -------------------------------------------------------------------------

sigma(model1)/mean(train$Sales)

# -------------------------------------------------------------------------

# The RSE provides an absolute measure of lack of fit of our model 
# to the data. But since it is measured in the units of Y, it is 
# not always clear what constitutes a good RSE. 

# -------------------------------------------------------------------------

# The R^2 statistic provides an alternative measure of fit. 
# It represents the proportion of variance explained and so
# it always takes on a value between 0 and 1, and is independent
#of the scale of Y.

# -------------------------------------------------------------------------

rsquare(model1, train)

# -------------------------------------------------------------------------

#  The result suggests that TV advertising budget can explain 
# 64% of the variability in our sales data.

# -------------------------------------------------------------------------

# As a side note, in a simple linear regression model the 
#R^2 value will equal the squared correlation between X and Y:
cor(train$TV, train$Sales)^2

# -------------------------------------------------------------------------

# F-statistic tests to see if at least one 
# predictor variable has a non-zero coefficient.

# -------------------------------------------------------------------------

# Hence, a larger F-statistic will produce a statistically significant p-value
#(p< 0.05). In our case we see at the bottom of our summary statement 
# that the F-statistic is 210.8 producing a p-value of p<2.2e−16

# -------------------------------------------------------------------------

summary(model1)
# Combined, our RSE, R2, and F-statistic results suggest that 
# our model has an ok fit, but we could likely do better.

# -------------------------------------------------------------------------

# Assessing Our Model Visually
#https://uc-r.github.io/linear_regression#req
