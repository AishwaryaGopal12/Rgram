library(imager)
library(testit)

#' Converting a color image into a grayscale image.
#'
#' @param image  string, path for the input image file
#'
#' @return an image file in gray scale
#' @export
#'
#' @examples
#' grayscale("images/samples.jpg")

grayscale <- function(image){

  # exception handling
  assert("Please provide a string as the path for the input image file.", is.character(image))

  #Reading image file as matrix
  input <- load.image(image)

  input_height <- dim(input)[1]
  input_width <- dim(input)[2]
  input_depth <- dim(input)[3]

  image_grey <- array(dim = dim(input))

  for (i in 1:input_height) {
    for (j in 1:input_width) {
      for (k in 1:input_depth){
        R = input[i,j,k,1]
        G = input[i,j,k,2]
        B = input[i,j,k,3]

        gray = 0.2989*R + 0.5870*G + 0.1140*B

        image_grey[i,j,k,1] = gray
        image_grey[i,j,k,2] = gray
        image_grey[i,j,k,3] = gray
      }
    }
  }

  as.cimg(image_grey)

  # gray_scale = imager::grayscale(img)
  # gray_scale
}

