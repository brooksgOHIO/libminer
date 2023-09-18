#' R Library Summary
#'
#'Provides a brief summary of the package libraries on
#'your machine.
#'
#'@param sizes logical for sizes
#'   Default  `FALSE`
#' @return A `data.frame` containing the count of packages in each
#'   of the user's libraries. If `sizes = TRUE` a column of sizes will be added
#' @export
#'
#' @examples
#' lib_summary()
#' lib_summary(sizes = TRUE)
lib_summary <- function(sizes = FALSE) {
  if (!is.logical(sizes)) {  # check arguments before run anything
    stop("sizes must be logical (TRUE/FALSE)")
  } #fail early
  pkgs <- utils::installed.packages()
  # one column is libPath
  # summarize library paths
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  #like (sizes == TRUE) or isTRUE(sizes) but since we did check above not critical
  names(pkg_df) <- c("Library", "n_packages")
  if (isTRUE(sizes)) {
    pkg_df$lib_size <- vapply(
      pkg_df$Library,
      function(x) {
        sum(fs::file_size(fs::dir_ls(x, recurse = TRUE)))
      },
      FUN.VALUE = numeric(1) #specifies just one number for each result
    )
  }
  # NA == TRUE is NA
  # last line is returned from function
  pkg_df
}

