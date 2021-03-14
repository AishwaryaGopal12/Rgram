
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Rgram

<!-- badges: start -->
<!-- badges: end -->

The goal of Rgram is to make the image processing task easy and
intuitive. With RGram, users can rotate the image, convert it to
greyscale, flip it in either a horizontal or vertical direction, and add
padding to it (frame).

## Installation

You can install the released version of Rgram from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("Rgram")
```

## Usage

This is a basic example which shows you how to solve a common problem:

``` r
library(Rgram)

1. `flipping(input_path, direction, output_path)`

Arguments:\
    - `input_path`: path to input image\
    - `direction`: direction of flip ("h" for horizontal/ "v" for vertical)\
    - `output_path`: path to output image

2. `grayscale(input_path)`

Arguments:\
    - `input_path`: path to input image\

3. `padding(input_path, width)`

Arguments:\
    - `input_path`: path to input image\
    - `width`: number of pixels of padding to be added\

4. `rotate(input_path, degrees)`

Arguments:\
    - `input_path`: path to input image\
    - `degrees`: the degrees to rotate the image by\

```

## Documentation

The help file can be viewed by:

``` r
?padding
?flipping
?rotate
?greyscale
#> No documentation for 'greyscale' in specified packages and libraries:
#> you could try '??greyscale'
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub!
