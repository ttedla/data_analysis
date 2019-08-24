
# -------------------------------------------------------------------------

# -------------------------------------------------------------------------
# The variables are mostly self-explanatory:
# - cty and hwy record miles per gallon (mpg) for city and highway driving.
# - displ is the engine displacement in litres.
# - drv is the drivetrain: front wheel (f), rear wheel (r) or four wheel (4).
# - model is the model of car. There are 38 models, selected because they had
#   a new edition every year between 1999 and 2008.
# - class (not shown), is a categorical variable describing the "type" of car:
#   two seater, SUV, compact, etc.


# -------------------------------------------------------------------------

                # Quick Plots # 

# -------------------------------------------------------------------------

qplot(displ, hwy, data = mpg)
qplot(displ, data = mpg)

# -------------------------------------------------------------------------

# Unless otherwise specified, qplot() tries to pick a sensible geometry and
# statistic based on the arguments provided.

# -------------------------------------------------------------------------

# For example, if you give qplot() x and y variables, it'll create a scatterplot. 
# If you just give it an x , it'll create a histogram or bar chart depending on 
# the type of variable.

# -------------------------------------------------------------------------

# qplot() assumes that all variables should be scaled by default. If you want
# to set an aesthetic to a constant, you need to use I() :

# -------------------------------------------------------------------------

qplot(displ, hwy, data = mpg, colour = "blue")
qplot(displ, hwy, data = mpg, colour = I("blue"))

# -------------------------------------------------------------------------


