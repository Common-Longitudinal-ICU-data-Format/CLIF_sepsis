# Load necessary libraries
if (!requireNamespace("jsonlite", quietly = TRUE)) {
  install.packages("jsonlite")
}

library(jsonlite)
library(here)
# Function to load configuration
load_config <- function() {
  json_path <- here("config/config.json")
  if (file.exists(json_path)) {
    config <- fromJSON(json_path)
    message("Loaded configuration from config.json")
  } else {
    stop("Configuration file not found. Please run 01_run_cohort_id_app.R which will create it for you")
  }
  return(config)
}

# Load the configuration
config <- load_config()
