# set the working directory
setwd("~/data_analysis/")
seed_root_h <- read.csv("./data/seed_root_herbivores.csv", header = T)
head(seed_root_h, 3)


# -------------------------------------------------------------------------

# standard error ----------------------------------------------------------

# ----- The standard error is a statistical term that measures the 
# ----- accuracy with which a sample represents a population. 
# ----- In statistics, a sample mean deviates from the actual mean of a population; 
# ----- this deviation is the standard error. 

# ---------  The smaller the standard error, ---------------
# -----------the more representative the sample will be of the overall population. --------
# ----------- It represents the standard deviation of the mean within a dataset.  ------
# -------- The Standard Error ("Std Err" or "SE"), is an indication of the reliability of the mean. --
# -------- A small SE is an indication that the sample mean is a more accurate reflection of the actual 
# ------population mean. 

# -------------------------------------------------------------------------



# -------------------------------------------------------------------------
            # It can be calculated using sqrt(var(x)/sample_size)

# -------------------------------------------------------------------------


# -------------------------------------------------------------------------

      # Calculating the SSE manually 
      # 1. Calculate the variance of the variable 
      # 2. Find the sample size using length (variable)
      # 3. Do sqrt(variance/sample_size)
# -------------------------------------------------------------------------


# 1. Calculate the variance of the variable height -------------------------------

height_varience <- round(var(seed_root_h$Height), 2)

# -------------------------------------------------------------------------


#   2. Find the sample size using length (variable) ----------------------
size_sample <- length(seed_root_h$Height)

# -------------------------------------------------------------------------


# 3. Do sqrt(variance/sample_size) ----------------------------------------
error_standard_mean <- round(sqrt(height_varience/size_sample), 2)

error_standard_mean


# -------------------------------------------------------------------------


# -------------------------------------------------------------------------


# standard error of mean using function -----------------------------------

standard.error <- function(x)
{
  round(sqrt(var(x, na.rm = T) / length(x)), 2)
}

# test the result with the manual -----------------------------------------

standard.error(seed_root_h$Height)
