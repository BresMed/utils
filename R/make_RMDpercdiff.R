#' make_RMDpercdiff
#'
#' make_RMDpercdiff returns a character string describing the 
#' percentage difference x is from y (higher, lower, same)
#'
#' param x is numeric
#' param y is numeric
#' param round_digits is the number of digits to round to, defaults to zero
#' param include_text whether to include text (T) or just digits (F)
#' 
#' returns a character object of length 1
#'
#' example:
#' make_RMDpercdiff(x = 10, y = 9, round_digits = 2)
#' returns: "11.11% higher than"
#' 
#' tests:
#' testthat::expect_equal(make_RMDpercdiff(10,10,0),"the same as")
#' testthat::expect_equal(make_RMDpercdiff(10,9,2),"11.11% higher than")
#' testthat::expect_equal(make_RMDpercdiff(9,11,2),"18.18% lower than")
#' testthat::expect_equal(make_RMDpercdiff(x = 9,y = 11, round_digits = 2,include_text = F), 18.18)
make_RMDpercdiff <- function(x, y, round_digits = 0, include_text = T){
  
  # calculate percent difference
  pcnt_diff <- (x - y) / y * 100
  pcnt_diff <- round(x = pcnt_diff, digits = round_digits)
  
  # if higher than 0 then higher than, otherwise lower than
  if(pcnt_diff > 0){
    out <- paste0(abs(pcnt_diff), "% higher than")
  }else{
    out <- paste0(abs(pcnt_diff), "% lower than")
  }
  # if equal to zero then over-write with the same as
  if(pcnt_diff == 0){
    out <- paste0("the same as")
  }
  
  # include text if TRUE (by default)
  if(include_text) {  
    return(out) 
    }else { 
      return(abs(pcnt_diff))
      }
}
