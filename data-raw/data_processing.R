# Description ------------------------------------------------------------------
# R script to process uploaded raw data into a tidy, analysis-ready data frame
# Load packages ----------------------------------------------------------------
## Run the following code in console if you don't have the packages
## install.packages(c("usethis", "fs", "here", "readr", "readxl", "openxlsx"))
library(usethis)
library(fs)
library(here)
library(readr)
library(dplyr)
library(readxl)
library(openxlsx)
library(lubridate)

# Load Data --------------------------------------------------------------------
# Load the necessary data from a CSV file
data_in <- readr::read_csv("data-raw/drilling survey.csv")

# (Optional) Read and clean the codebook if needed (commented out for now)
# codebook <- readxl::read_excel("data-raw/codebook.xlsx") %>%
#   clean_names()

# Tidy data --------------------------------------------------------------------
# Remove rows where the 'latitude' column contains NULL (NA) values
data_in <- data_in %>%
  filter(!is.na(latitude))

# Function to check for non-UTF-8 characters in character columns
check_utf8 <- function(df) {
  # Identify columns with invalid UTF-8 characters
  invalid_cols <- sapply(df, function(column) {
    if (!is.character(column)) return(FALSE) # Skip non-character columns
    any(sapply(column, function(x) {
      if (is.na(x)) return(FALSE) # Ignore NA values
      !identical(iconv(x, from = "UTF-8", to = "UTF-8"), x)
    }))
  })

  # Extract the column names with invalid characters
  bad_cols <- names(df)[invalid_cols]

  # Output a message depending on whether non-UTF-8 characters were found
  if (length(bad_cols) > 0) {
    message("Non-UTF-8 characters detected in columns: ",
            paste(bad_cols, collapse = ", "))
  } else {
    message("No non-UTF-8 characters found.")
  }
}

# Check the data for non-UTF-8 characters before conversion
check_utf8(data_in)

# Convert character columns from Latin1 encoding to UTF-8, removing problematic
#   characters
data_in[] <- lapply(data_in, function(x) {
  if (is.character(x)) {
    # Convert to UTF-8 and remove problematic characters
    iconv(x, from = "latin1", to = "UTF-8", sub = "")
  } else {
    x
  }
})

# Re-check the data for non-UTF-8 characters after the conversion
check_utf8(data_in)

# Convert 'date_of_drilling' column to Date type (assuming it's in m/d/y format)
data_in <- data_in %>%
  mutate(date_of_drilling = mdy(date_of_drilling))

# Reformat the date to d/m/y format (character format)
data_in <- data_in %>%
  mutate(date_of_drilling = format(date_of_drilling, "%d/%m/%Y"))

# Assign data to a variable
drillingdata <- data_in

# Export Data ------------------------------------------------------------------
usethis::use_data(drillingdata, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata"))
readr::write_csv(drillingdata,
                 here::here("inst", "extdata", paste0("drillingdata", ".csv")))
openxlsx::write.xlsx(drillingdata,
                     here::here("inst", "extdata", paste0("drillingdata",
                                                          ".xlsx")))

# Display a chart for the boreholes drilled per year ---------------------------
# Convert 'date_of_drilling' to Date format and extract the year
drillingdata$year <- year(mdy(drillingdata$date_of_drilling))

# Count number of boreholes drilled per year
boreholes_per_year <- drillingdata %>%
  filter(!is.na(year)) %>%
  group_by(year) %>%
  summarise(boreholes_drilled = n())

# Create the bar plot
ggplot(boreholes_per_year, aes(x = factor(year), y = boreholes_drilled)) +
  geom_col(fill = "red") +
  theme_minimal() +
  labs(
    title = "Boreholes Drilled Per Year",
    x = "Year",
    y = "Number of Boreholes Drilled"
  )


