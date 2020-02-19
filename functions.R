generate_daily <- function(date = Sys.Date()) {
  fs::dir_create(date)
  readme_yaml <- c("---", paste0("title: \"", as.character(date), "\""), "output: github_document", "---")
  path <- paste0(date, "/README.Rmd")
  writeLines(readme_yaml, path)
  rstudioapi::navigateToFile(path)
}

update_repo_readme <- function(date = Sys.Date()) {
  date_readme <- readLines(paste0(date, "/README.Rmd"))

  functions <- date_readme[grepl("# `", date_readme)]
  functions_split <- strsplit(functions, "`")
  functions_text <- c(functions_split[[1]][[2]], functions_split[[2]][[2]])

  base_link <- "https://github.com/sharlagelfand/twofunctionsmostdays/tree/master"
  functions_link <- gsub("# `|`|::|\\(\\)|!", "", functions)
  functions_link <- gsub(" ", "-", functions_link)
  functions_link <- paste0(base_link, "/", date, "#", functions_link)

  date_text <- paste0("* ", date, ":")
  functions_text_and_link <- paste0("    * [", functions_text, "](", functions_link, ")")

  all_to_add <- c(date_text, functions_text_and_link)

  write(all_to_add, file = "README.md", append = TRUE)
}
