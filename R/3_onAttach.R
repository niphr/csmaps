#' @import data.table
.onAttach <- function(libname, pkgname) {
  version <- tryCatch(
    utils::packageDescription("csmaps", fields = "Version"),
    warning = function(w){
      1
    }
  )

  packageStartupMessage(paste0(
    "csmaps ",
    version,
    "\n",
    "https://niphr.github.io/csmaps/"
  ))
}
