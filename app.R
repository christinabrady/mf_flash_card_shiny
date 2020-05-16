library(shiny)
library(shinythemes)
library(RODBC)
library(knitr)
library(kableExtra)
library(dplyr)

source("./include/global.R")
source("./include/ui_defs.R")
source("./include/server_defs.R")

shinyApp(ui, server)
