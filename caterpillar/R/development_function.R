#' @title Average Caterpillar Development Time
#' @description
#' Calculate the average development time for a caterpillar between different instars.
#' @param day1 caterpillar hatch date
#' @param day2 instar 2 date
#' @param day3 instar 3 date
#' @param day4 instar 4 date
#' @export

development_time <- function(day1, day2, day3, day4){
  if (missing(day4)){
    d_time <- (difftime(day3, day1, unit="days"))/3
  } else if (missing(day3)){
    d_time <- (difftime(day2, day1, unit="days"))/2
  } else if (missing(day2)){
    d_time <- 0
  } else {
    d_time <- (difftime(day4, day1, unit="days"))/4
  }
  return(d_time)
}
