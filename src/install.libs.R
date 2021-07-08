file <- if (WINDOWS) {
  "swmmm5.exe"}  else {
    "swmm5"}

# working directory is ./src
if (file.exists(file)) {
  dest <- file.path(R_PACKAGE_DIR, "bin", R_ARCH)
  message("Installing ", file, " to ", dest)
  dir.create(dest, recursive=TRUE, showWarnings=FALSE)
  file.copy(file, dest, overwrite=TRUE)
  file.remove(c(file, list.files(pattern = "\\.o$")))

}

file <- if (WINDOWS) {
  "swmmm5.dll"}  else {
    "swmm5.dll"}

# working directory is ./src
if (file.exists(file)) {
  dest <- file.path(R_PACKAGE_DIR, "bin", R_ARCH)
  message("Installing ", file, " to ", dest)
  dir.create(dest, recursive=TRUE, showWarnings=FALSE)
  file.copy(file, dest, overwrite=TRUE)
  file.remove(c(file, list.files(pattern = "\\.o$")))

}
