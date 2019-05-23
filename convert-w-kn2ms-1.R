#' Converts Wind Speed from Knots to Meters per Second.
#'
#' @param wkn A numerical vector with the wind speed in knots.
#'
#' @return A numerical vector with the wind speed in meters per second.
#'
#' @import utils
#'
#' @export
#'
convert_w_kn2ms <- function(wkn) {
  wms <- wkn * 0.514
  return(wms)
}

