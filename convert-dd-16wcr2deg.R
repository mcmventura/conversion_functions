#' Converts Wind Direction from 16-wind Compass Rose Points to Degrees.
#'
#' @param dd16wcr A character vector with the wind direction in 16-wind compass
#'   rose points.
#'   
#' @return A numerical vector with the wind direction in degrees.
#'
#' @import utils
#'
#' @export
#'
convert_dd_16wcr2deg <- function(dd16wcr) {
  dddeg <- c()
  crose <- c(C = 0, NNE = 20, NE = 45, ENE = 70, E = 90, ESE = 110, SE = 135,
    SSE = 160, S = 180, SSW = 200, SW = 225, WSW = 250, W = 270, WNW = 290,
    NW = 315, NNW = 340, N = 360)
  for (i in 1:length(dd16wcr)) {
    if (dd16wcr[i] %in% names(crose)) {
      dddeg[i] <- crose[dd16wcr[i]]
    } else if (is.na(dd16wcr[i])) {
      dddeg[i] <- NA
    } else {
      # "999" to say that in the original units is wrong
	  # The value "999" will throw an error when testing wind direction (0, 360)
      dddeg[i] <- 999
    }
  }
  return(dddeg)
}
