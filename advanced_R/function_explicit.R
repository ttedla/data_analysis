
# -------------------------------------------------------------------------

            # Exiting a function 

# -------------------------------------------------------------------------

# Most functions exit in one of two ways: 
# they either return a value, indicating success, 
# or they throw an error, indicating failure. 

# -------------------------------------------------------------------------

      # Implicit versus explicit returns

# -------------------------------------------------------------------------

# Implicitly, where the last evaluated expression is the return value:

j01 <- function(x){
  if(x<10){
    0
  } else {
    10
  }
}
j01(19)

# -------------------------------------------------------------------------

          # Explicitly, by calling return()

# -------------------------------------------------------------------------

j02 <- function(x){
  if(x<10){
    return(0)
  } else {
    return(10)
  }
}
j02(11)

# -------------------------------------------------------------------------

              # Invisible values

# -------------------------------------------------------------------------

# Most functions return visibly: calling the function in an 
#interactive context prints the result.

# -------------------------------------------------------------------------

j03 <- function() 1
j03()

# -------------------------------------------------------------------------

j04 <- function() invisible(1)
j04()
print(j04())
str(withVisible(j04()))
# -------------------------------------------------------------------------


