
find_author <- function() {
	name <- getOption("rmdees.author")
	if (!is.null(name)) {
		return(name)
	}
	name <- getOption("usethis.full_name")
	if (!is.null(name)) {
		return(name)
	}
	name <- getOption("devtools.name")
	if (!is.null(name) && name != "Your name goes here") {
		return(name)
	}
	stop(tfse:::pmsg("'author' argument is missing\n## ",
		"Set it globally with the following code:\n> options(rmdees.author = \"My name\")",
		print = FALSE), call. = FALSE)
}

find_twitter <- function(tw = NULL) {
	if (!is.null(tw)) {
		return(tw)
	}
	tw <- getOption("rmdees.twitter")
	if (!is.null(tw)) {
		return(tw)
	}
	stop(tfse:::pmsg("'twitter' argument is missing\n## ",
		"Set it globally with the following code:\n> options(rmdees.twitter = \"my_screen_name\")",
		print = FALSE), call. = FALSE)
}

find_github <- function(gh = NULL) {
	if (!is.null(gh)) {
		return(gh)
	}
	gh <- getOption("rmdees.github")
	if (!is.null(gh)) {
		return(gh)
	}
	stop(tfse:::pmsg("'github' argument is missing\n## ",
		"Set it globally with the following code:\n> options(rmdees.github = \"my_user_name\")",
		print = FALSE), call. = FALSE)
}
