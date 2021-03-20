# This script tests the flipping() function

context("Flipping image")
library(testit)
library(imager)


# flipping("https://raw.githubusercontent.com/UBC-MDS/Rgram/master/tests/testthat/test_images/flipping/sample.png", "test_images/flipping/flipping_H.png")
# flipping("https://raw.githubusercontent.com/UBC-MDS/Rgram/master/tests/testthat/test_images/flipping/flipping_H.png", "test_images/flipping/flipping_H2.png")

# original = load.image("https://raw.githubusercontent.com/UBC-MDS/Rgram/master/tests/testthat/test_images/flipping/sample.png")

# test_that("Image is flipped horizontally in black and white", {

#   output_f = load.image("test_images/flipping/flipping_H2.png")
#   expect_equal(original, output_f, tolerance=0.5)


# })

# test_that("In case the input is not an image", {
#   expect_error(flipping("test_images/flipping/test.pdf"))
# })

# test_that("If user specifies an additional argument, it throws an error", {

#   expect_error(flipping("?/sample.png", "flipping_h.png", "XYZ"))
# })

# test_that("In case the input/output is not a string", {

#   expect_error(flipping(123,"flipping_v.png"))
#   expect_error(flipping("flipping_v.png", c(1,2,3)))
# })
