generate_daily <- function(date = Sys.Date()) {
  usethis::ui_info("Creating directory and README for {date}...")

  fs::dir_create(date_dir(date))
  path <- paste0(date_dir(date), "/README.Rmd")

  if (fs::file_exists(path)) {
    overwrite <- usethis::ui_yeah("The README for {date} already exists. Want to overwrite it?")
  } else {
    overwrite <- TRUE
  }

  if (overwrite) {
    if(fs::file_exists(path)) {
      usethis::ui_done("Ok, starting the day's over!")
    }
    readme_contents <- c(
      "---",
      paste0("title: \"", as.character(date), "\""),
      "output: github_document",
      "---",
      "",
      "# - i know this one!",
      "",
      "```{r old, echo = TRUE}",
      "",
      "```",
      "",
      "# - new to me!",
      "",
      "```{r new, echo = TRUE}",
      "",
      "```"
    )
    writeLines(readme_contents, path)
    rstudioapi::navigateToFile(path)
  } else {
    usethis::ui_done("Ok, not overwriting then!")
  }
}

get_function_names <- function(date = Sys.Date()) {
  date_readme <- readLines(paste0(date_dir(date), "/README.Rmd"))

  functions <- date_readme[grepl("# `", date_readme)]
  functions_split <- strsplit(functions, "`")

  c(functions_split[[1]][[2]], functions_split[[2]][[2]])
}

generate_function_links <- function(function_names, date = Sys.Date()) {
  base_link <- "https://github.com/sharlagelfand/twofunctionsmostdays/tree/master"
  suffix_link <- c("---i-know-this-one", "---new-to-me")
  functions_link <- gsub("# `|`|::|\\(\\)|!", "", function_names)
  functions_link <- gsub(" ", "-", functions_link)
  paste0(base_link, "/", date_dir(date), "#", functions_link, suffix_link)
}

update_repo_readme <- function(date = Sys.Date()) {
  function_names <- get_function_names(date)
  function_links <- generate_function_links(function_names, date)

  date_text <- paste0("* ", date, " [(tweet)]()")
  function_names_and_links <- paste0("    * [", function_names, "](", function_links, ")")

  all_to_add <- c(date_text, function_names_and_links)

  # Add to the fifth line of README, after intro
  readme <- readLines("README.md")
  readme_intro <- readme[1:4]
  readme_links <- readme[5:length(readme)]

  readme_new <- c(readme_intro, all_to_add, readme_links)

  write(readme_new, file = "README.md")

  usethis::ui_done("README updated with functions from {date}: {glue::glue_collapse(function_names, sep = ' and ')}!")
}

generate_alt_text <- function(date = Sys.Date()) {
  usethis::ui_info("Generating alt text for screenshots...")

  function_names <- get_function_names(date)
  function_links <- generate_function_links(function_names, date)

  split_packages_and_functions <- strsplit(function_names, "::")
  packages <- c(split_packages_and_functions[[1]][[1]], split_packages_and_functions[[2]][[1]])
  functions <- c(split_packages_and_functions[[1]][[2]], split_packages_and_functions[[2]][[2]])
  functions <- gsub("()", "", functions, fixed = TRUE)

  glue::glue("A screenshot of R code showing how to use the {functions} function from the {packages} package. The code is available at {function_links}.")
}

generate_carbon_images <- function(date = Sys.Date()) {
  usethis::ui_info("Pulling function code and generating carbon images...")

  `%>%` <- magrittr::`%>%`

  date_readme_md <- readLines(paste0(date_dir(date), "/README.md"))

  functions_text <- date_readme_md %>%
    tibble::as_tibble() %>%
    dplyr::mutate(newline_after_chunk_end = value == "" & dplyr::lag(value) == "```") %>%
    dplyr::filter(!(value %in% c("``` r", "```")) & !newline_after_chunk_end) %>%
    dplyr::mutate(function_type = dplyr::case_when(
      stringr::str_detect(value, "i know this one") ~ "old",
      stringr::str_detect(value, "new to me") ~ "new"
    )) %>%
    tidyr::fill(function_type, .direction = "down") %>%
    dplyr::filter(!is.na(function_type)) %>%
    dplyr::filter(!stringr::str_detect(value, "i know this one|new to me")) %>%
    dplyr::mutate(value = stringr::str_replace(value, "    ##", "#>")) %>%
    dplyr::group_by(function_type) %>%
    dplyr::mutate(leading_or_trailing_newline = value == "" & dplyr::row_number() %in% c(1, dplyr::n())) %>%
    dplyr::filter(!leading_or_trailing_newline) %>%
    dplyr::ungroup()

  carbon_links <- functions_text %>%
    dplyr::group_split(function_type) %>%
    purrr::map(~ dplyr::pull(.x, value)) %>%
    purrr::map(~ carbonate::carbon$new(.x)) %>%
    purrr::map(~ {
      .x[["template"]] <- "a11y-dark"
      .x[["padding_vertical"]] <- .x[["padding_horizontal"]] <- 10
      .x[["font_size"]] <- "20"
      .x
    })

  for (i in seq_along(carbon_links)) {
    carbon_links[[i]]$browse()
  }

  usethis::ui_todo("Edit and save the images as you wish!")
}

date_dir <- function(date = Sys.Date()) {
  stringr::str_replace_all(date, "-", "/")
}
