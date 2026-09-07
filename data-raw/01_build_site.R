# Build the public documentation locally, without running API examples.
# Run from the package root: source(here::here("data-raw", "01_build_site.R"))
# Requirements: pkgdown, here, and the package's DESCRIPTION dependencies.

pkgdown::init_site()
pkgdown::build_home()
# Normalize the mixed-case legacy license filename for Linux hosting.
if ("License.html" %in% list.files(here::here("docs"))) {
  file.rename(here::here("docs", "License.html"), here::here("docs", "license_tmp.html"))
  file.rename(here::here("docs", "license_tmp.html"), here::here("docs", "LICENSE.html"))
}
pkgdown::build_reference(examples = FALSE, lazy = FALSE)
pkgdown::build_news()

# Publish only user-facing pages; development notes remain in the repository.
public_pages <- c("index.html", "404.html", "authors.html", "LICENSE.html",
                  "LICENSE-text.html", "license.html", "License.html")
root_pages <- list.files(here::here("docs"), pattern = "\\.html$", full.names = TRUE)
unlink(root_pages[!basename(root_pages) %in% public_pages])
pkgdown::build_search()
file.create(here::here("docs", ".nojekyll"))
message("Built docs/. Publish its contents to the gh-pages branch.")
