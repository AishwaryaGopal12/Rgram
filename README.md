
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Rgram Overview

<!-- badges: start -->

<!-- badges: end -->

Images form a significant part of the data in today's world. Whether you want to enhance your poorly-lit profile picture or analyze satellite images, filters are your best friends. In scientific image processing, at most times, the images cannot be used directly and need to be processed to extract information from them. Rgram aims to make the image processing task easy and intuitive. With Rgram, users can rotate the image, convert it to greyscale, flip it in either a horizontal or vertical direction, and add padding to it (frame).

## R ecosystem
There are two packages in the R ecosystem that provide image and advanced image processing. [magick](https://cran.r-project.org/web/packages/magick/vignettes/intro.html) and [imager](https://dahtah.github.io/imager/imager.html) are the most comprehensive image processing libraries exist today in the R ecosystem. Both of them provide functions for flipping, gray-scaling, padding, and rotating. 

## Functions

- `flipping`: This function can be used to flip the image either in the horizontal or vertical direction.

- `grayscale`: The greyscale function converts a color image into a greyscale image.  

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

## Documentation

The help file can be viewed by:

```{r}
?padding
?flipping
?rotate
?greyscale
```

