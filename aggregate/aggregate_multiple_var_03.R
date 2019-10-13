
# -------------------------------------------------------------------------

         # aggregate on the basis of multiple column

# -------------------------------------------------------------------------

head(mtcars)

sd_cyl_vs <- aggregate(mtcars[, c(1,3,4,5,6,7,9,10)], by = list(cylinder = mtcars$cyl, vs = mtcars$vs), sd, simplify = T)

sd_cyl_vs

# -------------------------------------------------------------------------


avg_cyl_vs <- aggregate(mtcars[, c(1,3,4,5,6,7,9,10)], by = list(cylinder = mtcars$cyl, vs = mtcars$vs), mean, simplify = T)

avg_cyl_vs

# -------------------------------------------------------------------------


