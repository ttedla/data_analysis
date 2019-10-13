
# -------------------------------------------------------------------------

# use on.exit() to set up an exit handler. The following 
# simple example shows that the exit handler is run regardless 
# of whether the function exits normally or with an error.

# -------------------------------------------------------------------------

j06 <- function(x) {
  cat("Hello\n")
  on.exit(cat("Goodbye\n"), add=TRUE)
  
  if(x){
    return(10)
  } else{
    stop("Error")
  }

}
j06(1)
j06(FALSE)

# -------------------------------------------------------------------------

# on.exit() is useful because it allows you to place 
# clean-up code directly next to the code that requires clean-up:
  

# -------------------------------------------------------------------------

cleanup <- function(dir, code) {
  old_dir <- setwd(dir)
  on.exit(setwd(old_dir), add = TRUE)
  
  old_opt <- options(stringsAsFactors = FALSE)
  on.exit(options(old_opt), add = TRUE)
}


# -------------------------------------------------------------------------
getwd()

with_dir <- function(dir, code) {
  old <- setwd(dir)
  on.exit(setwd(old), add = TRUE)
  
  force(code)
}
with_dir("~/Downloads", getwd())

getwd()

# -------------------------------------------------------------------------

# you want the most recent added expression to be run 
# first. In R 3.5 and later, you can control this by 
# setting after = FALSE:

# -------------------------------------------------------------------------

j09 <- function(){
  on.exit(message("a"), add=TRUE, after = FALSE)
  on.exit(message("b"), add = TRUE, after = FALSE)
  on.exit(message("c"), add = TRUE, after = FALSE)
}
j09()
