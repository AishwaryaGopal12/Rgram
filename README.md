
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Rgram
[![codecov](https://codecov.io/gh/UBC-MDS/Rgram/branch/master/graph/badge.svg?token=TY1OZUNAQ8)](https://codecov.io/gh/UBC-MDS/Rgram) [![R-CMD-check](https://github.com/UBC-MDS/Rgram/actions/workflows/check-standard.yaml/badge.svg)](https://github.com/UBC-MDS/Rgram/actions/workflows/check-standard.yaml)
<!-- badges: start -->
<!-- badges: end -->

The goal of Rgram is to make the image processing task easy and
intuitive. With Rgram, users can rotate the image, convert it to
greyscale, flip it horizontally in Black&White, and add
padding to it (frame).

## Installation

You can install the released version of Rgram from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("devtools")
devtools::install_github("UBC-MDS/"rgram")
```

## Usage

This is a basic example which shows you how to solve a common problem:

`library(Rgram)`

1. `flipping(image)`

Arguments:\
    - `image`: path to input image

2. `grayscale(image)`

Arguments:\
    - `image`: path to input image\

3. `padding(image, width)`

Arguments:\
    - `image`: path to input image\
    - `width`: number of pixels of padding to be added\

4. `rotate(image, degrees)`

Arguments:\
    - `image`: path to input image\
    - `degrees`: the degrees to rotate the image by\


## Documentation

[vignette page](https://github.com/UBC-MDS/Rgram/blob/master/docs/articles/Rgram-vignette.html)

The help file can be viewed by:


``` r
?padding
?flipping
?rotate
?greyscale
#> No documentation for 'greyscale' in specified packages and libraries:
#> you could try '??greyscale'
```

