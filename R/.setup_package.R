### How to build an R package from scratch

usethis::create_package(".")
fs::file_delete(path = "DESCRIPTION")



author <- list(name = "Michael Rustler",
               orcid = "0000-0003-0647-7726",
               url = "https://mrustl.de")

pkg <- list(
  name = "swmm",
  title = "R package for compiling C source code of EPA`s Stormwater Management Model (SWMM)",
  desc = paste(
    "R package for compiling C source code of EPA`s Stormwater Management",
    "Model (SWMM).")
)


kwb.pkgbuild::use_pkg(
  pkg = pkg,
 # copyright_holder = list(name = "Michael Rustler", start_year = NULL),
  user = "mrustl"
)

kwb.pkgbuild::create_empty_branch_ghpages("swmm")


kwb.pkgbuild::use_pkg(author,
                      pkg,
                      version = "0.0.0.9000",
                      stage = "experimental")


usethis::use_vignette("validation")
usethis::use_vignette("sensitivity")

### R functions
pkg_dependencies <- c("zoo", "dplyr", "swmmr")

sapply(pkg_dependencies, usethis::use_package)

desc::desc_add_remotes("kwb-r/kwb.utils",normalize = TRUE)

usethis::use_pipe()

kwb.pkgbuild::use_autopkgdown()

kwb.pkgbuild::create_empty_branch_ghpages("keys.lid")
