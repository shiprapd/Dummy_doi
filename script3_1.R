library(checkmate)

# The package checkmate can be used to check if the input of a function is valid.

## binary mutation:

## function: mutate_b
## input:
# x: individual in {0, 1}^n
# method: "local" for local mutation, "global" for global mutation, "nonlocal"
#         for nonlocal mutation or "inversion" for inversion mutation
# pm: probability p_m for global mutation
# K: number K for nonlocal mutation
## output:
# individual x after mutation
mutate_b = function(x, method, pm = NULL, K = NULL) {
  # check input:
  assert_integerish(x, lower = 0, upper = 1, min.len = 1)
  assert_choice(method, c("local", "global", "nonlocal", "inversion"))
  assert_number(pm, lower = 0, upper = 1, null.ok = TRUE)
  assert_integerish(K, lower = 1, upper = length(x), null.ok = TRUE)

  # calculate length of x:
  n = length(x)

  # mutate x:
  if(method == "local") {
    ###### CODE HERE ########

  } else if(method == "global") {
    if(is.null(pm)) stop("pm not initialized!")
    ###### CODE HERE ########

  } else if(method == "nonlocal") {
    if(is.null(K)) stop("K not initialized!")
    ###### CODE HERE ########

  } else if(method == "inversion") {
    ###### CODE HERE ########

  }
  return(x)
}

################################################################################

## binary recombination of two parents:

## function: recombinate_b
## input:
# p1: first parent
# p2: second parent
# method: "one_point" for 1-point-crossover, "k_point" for K-point-crossover,
#         "uniform" for uniform crossover
# K: number K for K-point crossover
## output:
# individual generated with recombination
recombinate_b = function(p1, p2, method, K = NULL) {
  # check input:
  assert_integerish(p1, lower = 0, upper = 1, min.len = 1)
  assert_integerish(p2, lower = 0, upper = 1, len = length(p1))
  assert_choice(method, c("one_point", "k_point", "uniform"))
  if(length(p1) > 1) assert_int(K, lower = 1, upper = length(p1) - 1, null.ok = TRUE)

  # calculate length
  n = length(p1)

  # recombinate parents:
  if(method == "one_point") {
    ###### CODE HERE ########

  } else if(method == "k_point") {
    if(is.null(K)) stop("K not initialized!")
    ###### CODE HERE ########

  } else if(method == "uniform") {
    ###### CODE HERE ########

  }
  return(x)
}
