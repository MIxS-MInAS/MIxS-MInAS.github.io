#!/usr/bin/env Rscript

## Requires tidyr/readr/dply
library(readr)
library(dplyr)

input_mixs <-"docs/assets/checklists/versions/mixs_v6_minas_v0.0.2-MIxS.csv"
input_env <- "docs/assets/checklists/versions/mixs_v6_minas_v0.0.2-environmental_packages.csv"

desired_mixs_columns <- c("Structured comment name", "Item (rdfs:label)", "Definition", 
                          "Expected value", "Value syntax", "Example", "Section", "minas", "Preferred unit", 
                          "Occurence", "MIXS ID", "Modification Suggestion", 
                          "Requires Further Discussion", "Reason for further discussion")

desired_env_columns <- c("Environmental package", "Structured comment name", "Package item", 
                         "Definition", "Expected value", "Value syntax", "Example", "Requirement", 
                         "Preferred unit", "Occurrence", "MIXS ID", "Modification Suggestion", 
                         "Requires Further Discussion", "Reason for further discussion")

mixs <- read_csv(input_mixs)
env <- read_csv(input_env)

mixs_simplified <- mixs %>% filter(minas != "-") %>% select(desired_mixs_columns)
env_simplified <- env %>% filter(`Modification Suggestion` == "Y" | `MIXS ID` == "MIXS:XXXXXXX") %>% select(desired_env_columns)

write_csv(mixs_simplified, paste0(c(tools::file_path_sans_ext(input_mixs), "-simplified.csv"), collapse = ""))
write_csv(env_simplified, paste0(c(tools::file_path_sans_ext(input_env), "-simplified.csv"), collapse = ""))
