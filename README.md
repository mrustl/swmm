[![R-CMD-check](https://github.com/mrustl/swmm/workflows/R-CMD-check/badge.svg)](https://github.com/mrustl/swmm/actions?query=workflow%3AR-CMD-check)
[![pkgdown](https://github.com/mrustl/swmm/workflows/pkgdown/badge.svg)](https://github.com/mrustl/swmm/actions?query=workflow%3Apkgdown)
[![codecov](https://codecov.io/github/mrustl/swmm/branch/main/graphs/badge.svg)](https://codecov.io/github/mrustl/swmm)
[![Project Status](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/swmm)]()

# swmm

R package for compiling C source code of EPA`s
Stormwater Management Model (SWMM).

## Installation

For details on how to install KWB-R packages checkout our [installation tutorial](https://kwb-r.github.io/kwb.pkgbuild/articles/install.html).

```r
### Optionally: specify GitHub Personal Access Token (GITHUB_PAT)
### See here why this might be important for you:
### https://kwb-r.github.io/kwb.pkgbuild/articles/install.html#set-your-github_pat

# Sys.setenv(GITHUB_PAT = "mysecret_access_token")

# Install package "remotes" from CRAN
if (! require("remotes")) {
  install.packages("remotes", repos = "https://cloud.r-project.org")
}

# Install KWB package 'swmm' from GitHub
remotes::install_github("mrustl/swmm")
```

## Documentation

Release: [https://mrustl.github.io/swmm](https://mrustl.github.io/swmm)

Development: [https://mrustl.github.io/swmm/dev](https://mrustl.github.io/swmm/dev)
