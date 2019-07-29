
# -------------------------------------------------------------------------

                  # Subsetting Lists # 

# -------------------------------------------------------------------------

# To subset lists we can utilize the single bracket [ ], double brackets [[ ]], 
# and dollar sign $ operators. Each approach provides a specific purpose and can
# be combined in different ways to achieve the following subsetting objectives:
#           Subset list and preserve output as a list
#           Subset list and simplify output
#           Subset list to get elements out of a list
#           Subset list with a nested list

# -------------------------------------------------------------------------

        # Subset List and Preserve Output as a List #

# -------------------------------------------------------------------------

# To extract one or more list items while preserving 1 the output in 
# list format use the [ ] operator:

# -------------------------------------------------------------------------

l2 <- list (item1 = 1:3, item2 = letters[1:5], item3 = c (T, F, T, T))
comment(l2) <- "This is a comment on a list"
attr (l2, "item2") <- "Comment for item2"

# -------------------------------------------------------------------------

l2

# -------------------------------------------------------------------------

# extract first list item
l2[1]

# -------------------------------------------------------------------------

# same as above but using the item's name
l2['item1']

# -------------------------------------------------------------------------

# extract multiple list items
l2[c(1,3)]

# -------------------------------------------------------------------------

# same as above but using the items' names
l2[ c ("item1", "item3")]

# -------------------------------------------------------------------------

                      # Subset List and Simplify Output #

# -------------------------------------------------------------------------

      # To extract one or more list items while simplifying the output
      # use the [[ ]] or $ operator:

# -------------------------------------------------------------------------

# extract first list item and simplify to a vector
l2[[1]]

l2[['item1']]

l2$item1
# -------------------------------------------------------------------------

        # One thing that differentiates the [[ operator from the $
        # is that the [[ operator can be used with computed indices. 
        # The $ operator can only be used with literal names.


# -------------------------------------------------------------------------

            # Subset List to Get Elements Out of a List #

# -------------------------------------------------------------------------

    # To extract individual elements out of a specific list item combine the 
    # [[ (or $ ) operator with the [ operator:

# -------------------------------------------------------------------------

# extract third element from the second list item
l2[[2]][3]

l2[["item2"]][3]

l2$item2[3]

# -------------------------------------------------------------------------

            # Subset List with a Nested List #

# -------------------------------------------------------------------------

l3 <- list (item1 = 1:3, 
            item2 = list (item2a = letters[1:5], item3b = c (T, F, T, T)))
str(l3)

# -------------------------------------------------------------------------

# If the goal is to 
#               subset l3 
#               to extract the nested list item item2a from item2 ,
#               we can perform this multiple ways.

# -------------------------------------------------------------------------

# preserve the output as a list
l3[["item2"]]["item2a"]

l3[[2]][1]


# -------------------------------------------------------------------------

# simplify the output 
l3[["item2"]][["item2a"]]

l3[[2]]$item2a

l3[[2]][[1]]

# -------------------------------------------------------------------------

# extract individual element from a nested list item
l3[[2]][[1]][3]

l3[[2]][[1]][[3]]

