# This script tests the greyscale() function

context("Greyscale image")
library(imager)
library(testit)

# test_that("If user specifies an additional argument, it throws an error", {

#   expect_error(grayscale("https://raw.githubusercontent.com/UBC-MDS/Rgram/master/tests/testthat/test_images/grayscale/sample.jpg", 20, "test_images/grayscale/gray_image.jpg", "box"))

# })

# test_that("Color image is converted to grayscale", {

#   output_g<- grayscale("https://raw.githubusercontent.com/UBC-MDS/Rgram/master/tests/testthat/test_images/grayscale/sample.jpg")
#   exp_output_g <- load.image("https://raw.githubusercontent.com/UBC-MDS/Rgram/master/tests/testthat/test_images/grayscale/gray_image.jpg")
#   expect_equal(output_g, exp_output_g, tolerance=1e-1)
# })

# test_that("In case the input path does not exist", {

#  expect_error(grayscale("123/grayscale/input.jpg"))
# })

# test_that("In case the input is not an image", {
#     expect_error(grayscale("test_images/grayscale/test.pdf"))
# })
