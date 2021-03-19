# This script tests the rotate() function

context("Rotate image")
library(imager)
library(testit)


test_that("In case the input is not an image", {

  expect_error(rotate(list(input1)))
  expect_error(rotate("test_images/rotate/input.pdf", 60))

})

test_that("If user specifies an additional argument, it throws an error", {

  expect_error(rotate("test_images/rotate/sample.jpg", 60,"abc"))

})

test_that("Image is rotated to 60 degree", {

  output_r<- rotate("test_images/rotate/sample.jpg", 60)
  exp_output_r <- load.image("https://raw.githubusercontent.com/UBC-MDS/Rgram/master/tests/testthat/test_images/rotate/samples_60.png")
  expect_equal(output_r, exp_output_r, tolerance=1e-2)

})

test_that("In case the input/output is not a string", {

  expect_error(rotate(123, "test_images/rotate/rotate.jpg"))
  expect_error(rotate("test_images/rotate/input.jpg", 60))
})

test_that("In case the input path does not exist", {

  expect_error(rotate("123/rotate/input.jpg", 60))
})

test_that("In case the input is not an image", {
  expect_error(rotate("test_images/rotate/test.pdf", 60))
})
