#' Transforms Cloud Cover from Tenths to Oktas.
#' 
#' @param tenhts A numeric vector with the cloud cover in tenths.
#' 
#' @return A numeric vector with the cloud cover in oktas.
#' 
#' @import utils
#' 
#' @export
#'
convert_n_tenths2oktas <- function(tenhts) {
# However the operation introduces imprecision
  oktas <- round((8 / 10) * tenhts)
  return(oktas)
}