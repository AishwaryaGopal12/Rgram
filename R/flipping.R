library(testit)
library(png)
library(tableMatrix)

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


  input_img <- png::readPNG(input_path)


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

