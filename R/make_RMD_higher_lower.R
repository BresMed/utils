#' make_RMD_higher_lower
#'
#' make_RMD_higher_lower returns a character string describing the 
#' absolute difference x is from y (higher, lower, same)
#'
#' param x is numeric
#' param y is numeric
#' param round_digits is the number of digits to round to, defaults to zero
#' 
#' returns a character object of length 1
#'
#' example:
#' make_RMD_higher_lower(x = 11.23, y = 10, round_digits = 2)
#' returns: "1.23 higher than"
#' 
#' tests:
#' testthat::expect_equal(make_RMD_higher_lower(10,10,0),"the same as")
#' testthat::expect_equal(make_RMD_higher_lower(10,9,0),"1 higher than")
#' testthat::expect_equal(make_RMD_higher_lower(9,11,0),"2 lower than")
#'
make_RMD_higher_lower <- function(a, b, round_digits = 0){
  
  # calculate percent difference
  input_diff <- a - b
  input_diff <- round(x = input_diff, digits = round_digits)
  
  # if higher than 0 then higher than, otherwise lower than
  if(input_diff>0){
    out <- paste0(abs(input_diff), " higher than")
  }else{
    out <- paste0(abs(input_diff), " lower than")
  }
  # if equal to zero then over-write with the same as
  if(input_diff == 0){
    out <- paste0("the same as")
  }
  
  return(out)
}
