# This script tests the flipping() function

context("Flipping image")
library(testit)
library(imager)


test_that("Image is flipped horizontally in black and white", {

  original <- load.image("https://raw.githubusercontent.com/UBC-MDS/Rgram/master/tests/testthat/test_images/flipping/sample.png")
  output_f <- flipping("https://raw.githubusercontent.com/UBC-MDS/Rgram/master/tests/testthat/test_images/flipping/flipping_H.png")
  expect_equal(original, output_f, tolerance=0.5)


})

test_that("In case the input is not an image", {
  expect_error(flipping("test_images/flipping/test.pdf"))
})

test_that("If user specifies an additional argument, it throws an error", {

  expect_error(flipping("?/sample.png", "flipping_h.png", "XYZ"))
})


