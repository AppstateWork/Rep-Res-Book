#################
# Make file for the book Reproducible Research with R and RStudio
# Christopher Gandrud
# Updated: 30 March 2015
# Changed: 16 July 2015 ----Alan
#################

# This R source code compiles the manuscript for the book Reproducible Research 
# with R and RStudio.
# It also updates the main README file.

## Installing required packages
# Note: To install the R packages used to compile the book open the 
# Source/Children/FrontMatter/Packages.Rnw.
# Find: doInstall <- FALSE in the code chunk labeled "FrontPackageCitations".
# Change the value `FALSE` to `TRUE` and run the code chunk.

# Load knitr package
library(knitr)

#### Specify working directories. Change as needed. ####
# Rep-Res-Parent.Rnw  # Alan edited 7/16/15
ParentDirectory <- "/home/faculty/arnholtat/Rep-Res-Book/Source/"

# README.Rmd  # Alan edited 7/16/15
SetupDirectory <- "/home/faculty/arnholtat/Rep-Res-Book"

##### Create PDF Book Manuscript ####
# Compile the book's parent document
setwd(ParentDirectory)
knitr::knit2pdf(input = "Rep-Res-Parent.Rnw")

# Embed fonts
# This is largely for complete replication purposes only and is not necessary.
## If using Windows please see extrafont set up instructions at 
# https://GitHub.com/wch/extrafont
# extrafont::embed_fonts("Rep-Res-Parent.pdf")

#### README ####
setwd(SetupDirectory)
knitr::knit(input = "README.Rmd", output = "README.md")
