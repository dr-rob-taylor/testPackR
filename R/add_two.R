
#' Add two numbers
#'
#' @details
#' Adds two numeric inputs together. Numbers provided as strings
#' will be coerced to numeric.
#'
#' @param a numeric input a
#' @param b numeric input b
#'
#' @returns Numeric
#' @export
#'
#' @examples
#' add_two(4, 5)
#' add_two("4", 10)
add_two <- function(a, b){

  if(nargs() != 2) stop("Missing numeric input! Must have two inputs values!")
  if(is.null(a) | is.null(b) ) return(NULL)

  tryCatch({
    a <- as.numeric(a)
    b <- as.numeric(b)

    return( a + b )

  }, error = function(e){
    msg <- sprintf("ERROR: %s. Check input values are numeric,", e$message)
    stop("Oh no! Error!")
  }, warning = function(w){
    msg <- sprintf("WARNING: %s. Check input values are numeric,", w$message)
    warning(msg)
  })

}
