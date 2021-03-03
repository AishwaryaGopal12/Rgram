
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Rgram Overview

<!-- badges: start -->

<!-- badges: end -->

Images form a significant part of the data in today's world. Whether you want to enhance your poorly-lit profile picture or analyze satellite images, filters are your best friends. In scientific image processing, at most times, the images cannot be used directly and need to be processed to extract information from them. PyGram aims to make the image processing task easy and intuitive. With PyGram, users can rotate the image, convert it to greyscale, flip it in either a horizontal or vertical direction, and add padding to it (frame).

## R ecosystem (To do)


## Functions

- `flipping`: This function can be used to flip the image either in the horizontal or vertical direction.

- `greyscale`: The greyscale function converts a color image into a greyscale image.  

- `padding`: This function can be used to add padding to the the borders of an image. 

- `rotate`: The rotate function rotates an image by the specified number of degrees. 

## Installation

You can install the released version of Rgram from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("Rgram")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(Rgram)
## basic example code
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
files, so they display on GitHub\!
