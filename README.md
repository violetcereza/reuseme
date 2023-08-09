
<!-- README.md is generated from README.Rmd. Please edit that file -->

# reuseme

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/reuseme)](https://CRAN.R-project.org/package=reuseme)
[![R-CMD-check](https://github.com/olivroy/reuseme/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/olivroy/reuseme/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/olivroy/reuseme/branch/main/graph/badge.svg)](https://app.codecov.io/gh/olivroy/reuseme?branch=main)

<!-- badges: end -->

The goal of reuseme is to provide utility functions for project
management across RStudio projects. Sometimes, you have to manage
multiple things at once, but don’t have the time to do edits. You may
need to switch quickly to a project, add things or browse a certain file
if you have some replications across projects. Sometimes, it is hard to
do that. reuseme also aims to help me overcome things I don’t like on
Windows.

## Installation

You can install the development version of reuseme like so:

``` r
# R-universe
install.packages('reuseme', repos = c('https://olivroy.r-universe.dev', 'https://cloud.r-project.org'))

# From GitHub
pak::pak("olivroy/reuseme")
```

## Getting started

reuseme is adapted for a standard workflow, recommended in (find
resources)

- Anyone working in RStudio (recent version for hyperlink support)
- Work with RStudio projects
- Your RStudio projects are organized in a centralized location on your
  computer
- Your RStudio projects are Version controlled with git (optional, but
  recommended to avoid surprises! No need to be hosted on repositories
  like GitLab or GitHub)
- You are working on Windows (macOS is supported, but some things were
  designed on Windows)
- You use machine and human readable paths (i.e. no spaces, special
  characters) (Tip: don’t hesitate to rename your files, it can take
  away the pain in the long run!

To take advantage of reuseme, it is highly recommended to set the
following option in your `.Rprofile`

``` r
options(reuseme.reposdir = c("~/rrr", "any-other-directories-that-contain-rstudio-projects"))
```

This will enable functions like `proj_switch()`, `proj_list()`,
`use_todo()` to be optimized.

## Example

Since the package is meant for interactive use, there may not be a lot
of code. It takes advantage of [cli
hyperlinks](https://cli.r-lib.org/reference/links.html) to improve
productivity.

``` r
library(reuseme)
## basic example code
```

Most of these functions are meant to be used in RStudio, and in RStudio
Projects, as they have not been widely tested outside this context.

In interactive sessions, you can use the `screenshot()` function to
access an image in the clipboard and save it as .png in a `figures/`
directory in your RStudio project.

reuseme helps you work across projects, with the `proj_switch()`
function. `proj_switch()` works a lot like `usethis::proj_activate()`
with the advantage of only typing the project name, instead of the full
path. By default, reuseme looks at `options(reuseme.reposdir)`, that is
a vector of paths where repositories are located. Personally, I use
`~/rrr` (for my own projects) and `~/rrr-forks` (for projects I
contribute to).

When not supplying the `proj` argument, many functions will just offer
you to choose, with a user interface built on [cli
hyperlinks](https://cli.r-lib.org/reference/links.html).

### Extend usethis functionality

usethis is fantastic to manage workflow within a project, but is harder
across projects.

If you want to work across projects with [usethis](usethis.r-lib.org),
you need to provide the full path to a project. With reuseme, just use
the project name!

<table style="width:100%;">
<caption>usethis vs reuseme</caption>
<colgroup>
<col style="width: 27%" />
<col style="width: 27%" />
<col style="width: 45%" />
</colgroup>
<thead>
<tr class="header">
<th>Workflow</th>
<th>reuseme</th>
<th>usethis</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Switch to project “cool-project”</td>
<td><code>proj_switch(proj = "cool-project")</code></td>
<td><code>proj_activate(path = "C:/users/long/path/to/cool-project")</code></td>
</tr>
<tr class="even">
<td>Write a TODO item in project “cooler-project”, while working in
“cool-project”</td>
<td><code>use_todo(todo = "I need to do this ASAP as possible", proj = "cooler-project")</code></td>
<td><code>usethis::write_union(path = "C:/Users/I/do/not/want/to/type/cooler-project/TODO.R", lines = "I need to do this ASAP as possible.")</code></td>
</tr>
<tr class="odd">
<td>Open pkgdown site link and see vignettes</td>
<td><ol type="1">
<li>`browse_pkg(“usethis”)</li>
<li>Click on the hyperlinks that correspond to your query</li>
</ol></td>
<td><ol type="1">
<li><code>browse_package("usethis")</code></li>
<li>Type the correct number that corresponds</li>
<li><code>browseVignettes("usethis")</code></li>
<li>Open it</li>
</ol></td>
</tr>
</tbody>
</table>

usethis vs reuseme

## Proposing a data analysis workflow

<!--# Write about dplyr-plus functions! -->
<!--# Write about *_identity functions -->
<!--# Write about _named functions -->
