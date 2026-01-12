# Add sandbox
install.packages(c("sandpaper", "varnish", "pegboard", "tinkr"), repos = c("https://carpentries.r-universe.dev/", getOption("repos")))

# test setup

rmarkdown::pandoc_version()
tmp <- tempfile()
sandpaper::create_lesson(tmp, open = FALSE)
sandpaper::build_lesson(tmp, preview = FALSE, quiet = TRUE)
fs::dir_tree(tmp, recurse = 1)

# Use `.md` files for episodes when you want static content
# Use `.Rmd` files for episodes when you need to generate output
# Run `sandpaper::check_lesson()` to identify any issues with your lesson
# Run `sandpaper::build_lesson()` to preview your lesson locally
# Use `.md` files for episodes when you want static content
# Use `.Rmd` files for episodes when you need to generate output
# Run `sandpaper::check_lesson()` to identify any issues with your lesson
# Run `sandpaper::build_lesson()` to preview your lesson locally

# If you use R and use an HTTPS protocol, this can be done in a single step from inside RStudio with the {usethis} package:

# https://usethis.r-lib.org/reference/index.html

#usethis::use_github()
#usethis::use_github_pages()
#The use_github() function will set up a new repository under your personal account called buoyant-barnacle, add that remote to your git remotes, and automatically push your repository to GitHub.

#The use_github_pages() function will signal to GitHub that it should allow the gh-pages branch to serve the website at https://user.github.io/buoyant-barnacle

# ?usese_github()
# usethis::use_github_pages()

# library("usethis")
# git_sitrep() # git situation report

# in R, use credentials::git_credential_forget() to clear the cache
# use credentials::set_github_pat() and paste your token.


sandpaper::check_lesson()
sandpaper::build_lesson()
