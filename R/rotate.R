library(imager)
library(testit)

#' Rotates an image about it's center by the given degree.
#'
#' @param image path of input file
#' @param degree int of degree
#'
#' @return an image with the specified degree rotated
#' @export
#'

rotate <- function(image, degree){

  # exception handling
  # assert("Please provide a string as the path for the input image file.", is.character(image))

  #Reading image file as matrix
  input <- load.image(image)

  img_rotate <- imager::imrotate(input, 60)

  img_rotate
}




