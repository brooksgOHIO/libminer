lib_summary <- function() {
  pkgs <- utils::installed.packages()
  # one column is libPath
  # summarize library paths
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")
  # last line is returned from function
  pkg_df
}

#run in console
# check()
# run check frequently
# must fix errors
# should fix warnings if submit CRAN must
# try to eliminate notes if submit CRAN must explain
# new package undergoes manual inspection
# or if notes

#run in console
# use_mit_license()
# we are still creator and copyrighter but they have license to use
# unless explicitly given world to use it, they cannot
# so muct have license for them to use it
# anyone author in description gets copyright
# license.md has actual MIT license in it
# CRAN requires LICENSE only
# .md gets added to .Rbuildignore
