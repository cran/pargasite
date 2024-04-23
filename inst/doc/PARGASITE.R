## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## ----setup--------------------------------------------------------------------
#  ## Install from CRAN
#  install.packages("pargasite")
#  
#  ## Load pargasite pacakge
#  library(pargasite)

## ----api service--------------------------------------------------------------
#  if (!requireNamespace("raqs", quietly = TRUE)) {
#    install.packages("raqs")
#  }
#  library(raqs)
#  
#  ## Please use your email address to create an account
#  ## A verification email wille be sent to the eamil account speficied.
#  aqs_signup('youremail@address.com')
#  
#  ## Set API info for the current session
#  set_aqs_user(email = "youremail@address.com", key = "your_api_key")

## ----create pargasite data----------------------------------------------------
#  ## Ozone concentrations based on 20km x 20km grid over the conterminous US
#  ozone20km <- create_pargasite_data(
#    pollutant = "Ozone", event_filter = "Events Included", year = 2021:2022,
#    cell_size = 20000
#  )

## ----combine data cubes-------------------------------------------------------
#  ## CO concentrations
#  co20km <- create_pargasite_data(
#    pollutant = "CO", event_filter = "Events Included", year = 2021:2022,
#    cell_size = 20000
#  )
#  
#  ## Combine pollutant data cubes
#  combined <- c(ozone20km, co20km)

## ----launch shiny app---------------------------------------------------------
#  run_pargasite(combined)

