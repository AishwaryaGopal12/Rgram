#' Converting a color image into a grayscale image.
#'
#' @param image  string, path for the input image file
#' @param output_path string, path for the output image file
#'
#' @return an image file at the specified output path in .png format
#' @export
#'
#' @examples
#' grayscale("images/sample.png", "images/greyscale.png")
grayscale <- function(image, output_path){
    # exception handling
    assert("Please type in  a string as the path for the input image file.", is.character(image))
    assert("Please type in  a string as the path for the output image file.", is.character(output_path))

    input_img <- readPNG(image)

    input_img_height <- dim(input_img)[1]
    input_img_width <- dim(input_img)[2]

    img_gs <- array(dim = dim(input_img))

    for (i in 1:input_img_height) {
      for (j in 1:input_img_width) {
        R = input_img[i,j,1]
        G = input_img[i,j,2]
        B = input_img[i,j,3]

        gray_scale = 0.2989*R + 0.5870*G + 0.1140*B

        output_img[i,j,1] = gray_scale
        output_img[i,j,2] = gray_scale
        output_img[i,j,3] = gray_scale
      }
    }

    writePNG(output_img, output_path)

}
