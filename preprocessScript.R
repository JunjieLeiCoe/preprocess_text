# MIT License
# 
# Copyright (c) 2023 Junjie
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#   
#   The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.


#################################################################
##                    Creator : Junjie Lei                     ##
##                  Creation Date : 1/9/2022                   ##
##                  Title : Preprocess Script                  ##
#################################################################

# Notes -- Remember to source me!!
# url <- 'https://raw.githubusercontent.com/JunjieLeiCoe/preprocess_text/main/preprocessScript.R'
# source(url)

##----------------------------------------------------------------
##                        Some prep work                        --
##----------------------------------------------------------------

print('Starting ...')

rm(list = ls())
curr_wd <- getwd()
cat(paste('\nCurrent Working Dir --\n', curr_wd, '\n'),
    paste(rep('-', 80), collapse = ''))

packages <- c('plyr',
              'dplyr',
              'tidyverse',
              'reshape2',
              'ggplot2',
              'readxl',
              'openxlsx',
              'naniar')

new_packages <-
  packages[!(packages %in% installed.packages()[, "Package"])]
if (length(new_packages)) {
  install.packages(new_packages)
}

sapply(packages, library, character.only = T)

options(stringsAsFactors = F)

