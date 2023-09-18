# to open new project in Rstudio before
# ran this
## create_package("~/Desktop/libminer")

all(c("devtools", "roxygen2", "testthat", "knitr", "pkgdown") %in% installed.packages())

# use git to distribute
# indispensable
# if give to other people need git

# if not already done
## use_git_config(user.name = "Gordon Brooks", user.email = "brooksg@ohio.edu")

library(devtools)
git_vaccinate()
git_sitrep()

# ── Git global (user)
# • Name: 'Gordon Brooks'
# • Email: 'brooksg@ohio.edu'
# • Global (user-level) gitignore file: <unset>
#  • Vaccinated: TRUE
# ℹ See `?git_vaccinate` to learn more
# ℹ Defaulting to 'https' Git protocol
# • Default Git protocol: 'https'
# • Default initial branch name: 'master'
# https is good for communication

use_git()
# questions are randomized
# agree
# then restart

usethis::use_devtools()
# maybe don't want to load package every time you open r studio
# we only use devtools interacively so its okay to load it
# opens .Rprofile and we add

# library throws error if no package
# require just throws T or F

# can put .Rprofile in project folder then don't need global
# restart R a lot
# Ctrl+Shift+F10
# session restart r

# use hyphen for file names
use_r("lib-summary")

# test function
# ctrl_shift+L
devtools::load_all()
# like install + library

# restart R
# try it and commit changes
