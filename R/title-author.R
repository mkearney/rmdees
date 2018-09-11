#' Find and insert author of rmarkdown document
#'
#' Finds author/name and prints in html (line breaks if necessary).
#'
#' @export
title_author <- function() {
	gsub("\n+", "<br/>", paste(find_author(), collapse = "<br/>"))
}

