library(imager)
library(testit)


#' Add a padding to the border of the image
#'
#' @param image path of input file
#' @param width the pixels of the padding, the padding width for left, right, top, bottom are the same
#'
#' @return an image matrix that has been padded
#' @export
#'

padding <- function(image, width){

  # exception handling
  # assert("Please provide a string as the path for the input image file.", is.character(image))

  #Reading image file as matrix
  input <- load.image(image)

  img_pad <- pad(pad(input, width, pos=-1,"xy",val="black"), width, pos=1, "xy", val="black")

  img_pad
}
