
# -------------------------------------------------------------------------

                      #Loops

# -------------------------------------------------------------------------

# for loops are used to iterate over items in a vector. 
#They have the following basic form:
          
            #for (item in vector) perform_action

# -------------------------------------------------------------------------

# For each item in vector, perform_action is called once; 
# updating the value of item each time.

# -------------------------------------------------------------------------

for(i in 1:3){
  print(i)
}

# -------------------------------------------------------------------------

# There are two ways to terminate a for loop early:

#next exits the current iteration.
#break exits the entire for loop.

# -------------------------------------------------------------------------

for(i in 1:10){
  if(i<3)
    next
  
  print(i)
  
  if(i>=5)
    break
}

# -------------------------------------------------------------------------

means <- c(1, 50, 20)
out <- vector("list", length(means))
for (i in 1:length(means)) {
  out[[i]] <- rnorm(10, means[[i]])
}
out

# -------------------------------------------------------------------------

# Next, beware of iterating over 1:length(x), 
#which will fail in unhelpful ways if x has length 0:

means <- c()
out <- vector("list", length(means))
for (i in 1:length(means)) {
  out[[i]] <- rnorm(10, means[[i]])
}
# This occurs because : works with both increasing and decreasing sequences:
  1:length(means)

# -------------------------------------------------------------------------

# solution (use always seq_along)  
seq_along(means)

out <- vector("list", length(means))
for (i in seq_along(means)) {
    out[[i]] <- rnorm(10, means[[i]])
}
out

# -------------------------------------------------------------------------

#Finally, you might encounter problems when iterating over 
#S3 vectors, as loops typically strip the attributes:

xs <- as.Date(c("2020-01-01", "2010-01-01"))
xs
for(x in xs){
  print(x)
}

# Work around this by calling [[ yourself:

for(i in seq_along(xs)){
  print(xs[[i]])
}

# -------------------------------------------------------------------------
# 
# for loops are useful if you know in advance the set of values that you want to iterate over. If you don’t know, there are two related tools with more flexible specifications:
#   
#   while(condition) action: performs action while condition is TRUE.
# 
# repeat(action): repeats action forever (i.e. until it encounters break).
# 
# R does not have an equivalent to the do {action} while (condition) syntax found in other languages.
# 
# You can rewrite any for loop to use while instead, and you can rewrite any while loop to use repeat, but the converses are not true. That means while is more flexible than for, and repeat is more flexible than while. It’s good practice, however, to use the least-flexible solution to a problem, so you should use for wherever possible.
# 
# Generally speaking you shouldn’t need to use for loops for data analysis tasks, as map() and apply() already provide less flexible solutions to most problems. You’ll learn more in Chapter 9.

