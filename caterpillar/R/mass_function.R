#' @title Average Caterpillar Mass
#' @description
#' Find the average mass difference between two to three dates for a given container.
#' @param alive1 The number of caterpillars alive on day 1.
#' @param mass1 The overall caterpillar mass on day 1.
#' @param alive2 The number of caterpillars alive on day 2.
#' @param mass2 The overall caterpillar mass on day 2.
#' @param alive3 The number of caterpillars alive on day 3.
#' @param mass3 The overall caterpillar mass on day 3.
#' @export

avg_mass <- function(alive1, mass1, alive2, mass2, alive3, mass3){
  if (missing(alive3) && missing(mass3)){
    avg_mass_gain <- mass2/alive2 - mass1/alive1 
  } else {
    avg_mass_gain <- ((mass3/alive3 - mass2/alive2) + (mass2/alive2 - mass1/alive1))/2
  }
  return(avg_mass_gain)
} 

