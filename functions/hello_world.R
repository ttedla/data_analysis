
# -------------------------------------------------------------------------

     # Functions 

# -------------------------------------------------------------------------

  # Hello World

say.hello <- function() {
  print("Hello, World!")
}
say.hello()

# -------------------------------------------------------------------------


hello.person <- function(name){
  sprintf("Hello %s", name)
}
hello.person("Tadele")

# -------------------------------------------------------------------------

hello.first.last <- function(first, last) {
  sprintf("Hello, %s %s ", first, last)
}
hello.first.last("Me", "you")
hello.first.last(first = "First name", last = "last name")
