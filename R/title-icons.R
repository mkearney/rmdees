
#' Generate text for title icons
#'
#' Outputs Twitter and Github icons for Xaringan title slide
#'
#' @param twitter Screen name
#' @param github User name
#' @return String of html code.
#' @export
title_icons <- function(twitter = NULL, github = NULL) {
	twitter <- find_twitter(twitter)
	github <- find_github(github)
  tw1 <- ""
  tw2 <- ""
  gh1 <- ""
  gh2 <- ""
  twitter_icon <- "<i class=\"fa fa-twitter\"></i>"
  github_icon <- "<i class=\"fa fa-github\"></i>"
  if (!is.null(twitter)) {
    tw1 <- tfse::psub('<th style=\"padding-right:75px!important\">
      <a href=\"https://twitter.com/{twitter}\"> {twitter_icon} </a></th>',
    	twitter = twitter, twitter_icon = twitter_icon)
    tw2 <- tfse::psub('<th style=\"padding-right:75px!important\">
      <a href=\"https://twitter.com/{twitter}\"> @{twitter} </a></th>',
    	twitter = twitter, twitter = twitter)
  }
  if (!is.null(github)) {
    gh1 <- tfse::psub('<th style=\"padding-left:75px!important\">
      <a href=\"https://github.com/{github}\"> {github_icon} </a></th>',
    	github = github, github_icon = github_icon)
    gh2 <- tfse::psub('<th style=\"padding-left:75px!important\">
      <a href=\"https://github.com/{github}\"> @{github} </a></th>',
    	github = github, github = github)
  }
  if (!is.null(tw1) | !is.null(gh1)) {
    tr1 <- paste0('<tr>', tw1, gh1, '</tr>')
    tr2 <- paste0('<tr style=\"background-color:#fff\">', tw2, gh2, '</tr>')
  } else {
    tr1 <- ""
    tr2 <- ""
  }
  h <- paste0('<table style=\"border-style:none;padding-top:30px;\" class=\".table\">',
    tr1, tr2, '</table>')
  gsub("\n", "", h)
}


#' @rdname title_icons
#' @export
title_icons_fa5 <- function(twitter = NULL, github = NULL) {
	twitter <- find_twitter(twitter)
	github <- find_github(github)
	tw1 <- ""
	tw2 <- ""
	gh1 <- ""
	gh2 <- ""
	twitter_icon <- "<i class=\"fab fa-twitter\"></i>"
	github_icon <- "<i class=\"fab fa-github\"></i>"
	if (!is.null(twitter)) {
		tw1 <- tfse::psub('<th style=\"padding-right:75px!important\">
			<a href=\"https://twitter.com/{twitter}\"> {twitter_icon} </a></th>',
			twitter = twitter, twitter_icon = twitter_icon)
		tw2 <- tfse::psub('<th style=\"padding-right:75px!important\">
			<a href=\"https://twitter.com/{twitter}\"> @{twitter} </a></th>',
			twitter = twitter, twitter = twitter)
	}
	if (!is.null(github)) {
		gh1 <- tfse::psub('<th style=\"padding-left:75px!important\">
			<a href=\"https://github.com/{github}\"> {github_icon} </a></th>',
			github = github, github_icon = github_icon)
		gh2 <- tfse::psub('<th style=\"padding-left:75px!important\">
			<a href=\"https://github.com/{github}\"> @{github} </a></th>',
			github = github, github = github)
	}
	if (!is.null(tw1) | !is.null(gh1)) {
		tr1 <- paste0('<tr>', tw1, gh1, '</tr>')
		tr2 <- paste0('<tr style=\"background-color:#fff\">', tw2, gh2, '</tr>')
	} else {
		tr1 <- ""
		tr2 <- ""
	}
	h <- paste0('<table style=\"border-style:none;padding-top:30px;\" class=\".table\">',
		tr1, tr2, '</table>')
	gsub("\n", "", h)
}


#' Path to font awesome 5 css
#'
#' @export
css_fa <- function(fa5 = TRUE) {
	if (fa5) {
		return(css_fa5())
	} else {
		return(css_fa4())
	}
}

#' @rdname css_fa
#' @export
css_fa5 <- function() {
	"https://use.fontawesome.com/releases/v5.3.1/css/all.css"
}

#' @rdname css_fa
#' @export
css_fa4 <- function() {
	"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
}
