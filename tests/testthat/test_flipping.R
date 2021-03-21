# This script tests the flipping() function

context("Flipping image")
library(testit)
library(imager)


# input: color image
input <- array(c(c(10, 20, 30, 40, 50,
                   20, 30, 40, 50, 10,
                   30, 40, 50, 10, 20,
                   40, 50, 10, 20, 30,
                   50, 10, 20, 30, 40),   #R values
                 c(110, 120, 130, 140, 150,
                   120, 130, 140, 150, 110,
                   130, 140, 150, 110, 120,
                   140, 150, 110, 120, 130,
                   150, 110, 120, 130, 140),   #G values
                 c(210, 220, 230, 240, 250,
                   220, 230, 240, 250, 210,
                   230, 240, 250, 210, 220,
                   240, 250, 210, 220, 230,
                   250, 210, 220, 230, 240)),  #B values
               dim = c(5,5,3))
png::writePNG(input, target=here:here("tests/testthat/test_images/flipping/input.png"))

test_that("Image is flipped horizontally in black and white", {

  original <- load.image("test_images/flipping/input.png")
  output_f <- flipping("https://raw.githubusercontent.com/UBC-MDS/Rgram/master/tests/testthat/test_images/flipping/flipping_H.png")
  expect_equal(original, output_f, tolerance=0.5)


})

test_that("In case the input is not an image", {
  expect_error(flipping("test_images/flipping/test.pdf"))
})

test_that("If user specifies an additional argument, it throws an error", {

  expect_error(flipping("?/sample.png", "flipping_h.png", "XYZ"))
})


