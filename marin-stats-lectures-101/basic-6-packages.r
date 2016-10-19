#Youtube videos with MarinStatsLectures - NEXT IS LECTURE 13

# R Packages -> https://ftp.heanet.ie/mirrors/cran.r-project.org/

help(install.packages)
help("install.packages")
?install.packages()

# Gets a list of all the functions and commands built into R
help(package = epiR)

# Leave blank and R studio will return a list of packages
install.packages()

installed.packages(lib.loc = NULL, priority = NULL,
                   noCache = FALSE, fields = NULL,
                   subarch = .Platform$r_arch)

installed.packages(noCache = TRUE)

# Check to see if package is installed before trying to install it
packageName <- "epiR"
if (!require(packageName, character.only = TRUE)) {
  install.packages(packageName)
  if (!require(packageName, character.only = TRUE)) stop("load failure: ", packageName)
}

# Libraries end after each R session, so we need to load a library at the start of an R session where we want to use that package
# Before using the package we have to load the library of that package
install.packages("epiR")
remove.packages("epiR")
library(epiR) # Use library at the top of each class or file

