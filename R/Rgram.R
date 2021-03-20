library(testit)
library(png)
library(tableMatrix)
library(imager)


#' Flipping an image horizontally in Black & White
#'
#' @param input_path path of input file
#' @param output_path string, path for the output image file
#'
#' @return an image file at the specified output path in .png format
#' @export
#'



flipping <- function(input_path, output_path) {

  # exception handling
  testit::assert("Invalid flipping")
  testit::assert("Please type in  a string as the path for the input image file.", is.character(input_path))


  input_img <- load.image(input_path)


  #Creating three RGB channels

  diminsion1 <- length(input_img)
  diminsion2 <- length(input_img)
  diminsion3 <- length(input_img)

  Rpos <- 1
  Gpos <- 1
  Bpos <- 1
  diminsion_c <- ncol(input_img)
  diminsion_r <- nrow(input_img)

  #Creating 3 vectors for RGB
  vector_R <- input_img[Rpos:diminsion1]
  vector_G <- input_img[Gpos:diminsion1]
  vector_B <- input_img[Bpos:diminsion1]

  #Separating RGB
  vector_Rs <- matrix(vector_R,nrow=diminsion_r, ncol=diminsion_c)
  vector_Gs <- matrix(vector_G,nrow=diminsion_r, ncol=diminsion_c)
  vector_Bs <- matrix(vector_B,nrow=diminsion_r, ncol=diminsion_c)

  #Direction {h}

    vector_Rs <- vector_Rs[, rev(seq_len(ncol(vector_Rs)))]
    vector_Gs <- vector_Gs[, rev(seq_len(ncol(vector_Gs)))]
    vector_Bs <- vector_Bs[, rev(seq_len(ncol(vector_Bs)))]


  #Combining 3 RGB channel matrices into a single #D matrix
  outputv <- array(c(vector_Rs,vector_Gs,vector_Bs),dim = c(diminsion_r,diminsion_c,3))

  #Save flipped image
  png::writePNG(outputv,output_path)
  #as.cimg(outputv)

}



#' Converting a color image into a grayscale image.
#'
#' @param image  string, path for the input image file
#'
#' @return an image file in gray scale
#' @export
#'


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
  assert("Please provide a string as the path for the input image file.", is.character(image))

  #Reading image file as matrix
  input <- load.image(image)

  img_pad <- pad(pad(input, width, pos=-1,"xy",val="black"), width, pos=1, "xy", val="black")

  img_pad
}


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
  assert("Please provide a string as the path for the input image file.", is.character(image))

  #Reading image file as matrix
  input <- load.image(image)

  img_rotate <- imrotate(input, 60)

  img_rotate
}




