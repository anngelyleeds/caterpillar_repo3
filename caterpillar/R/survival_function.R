#' @title Caterpillar Survival
#' @description
#' Calculate caterpillar survival after 1 or 2 heat shock exposures.
#' @param day1_alive The number of caterpillars alive before heat shock.
#' @param day2_alive The number of caterpillars alive after 1 heat shock.
#' @param day3_alive The number of caterpillars alive after 2 heat shocks.
#' @export

avg_survival <- function(day1_alive, day2_alive, day3_alive){
  if (missing(day3_alive)){
    avg <- day2_alive/day1_alive
  } else {
  heatshock1 <- day2_alive/day1_alive
  heatshock2 <- day3_alive/day2_alive
  avg <- (heatshock1 + heatshock2)/2
  }
  return(avg)
}

