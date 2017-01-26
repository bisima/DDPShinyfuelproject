#
# This is the user-interface definition of a fuel point of sale web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for fuel point of sale application 
shinyUI(fluidPage(
  
  #Application Header
  headerPanel("Fuel Purchase system"),
  
  # Application title
  #titlePanel("Set fuel unit price for that day (Cents)"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
 sidebarPanel(
    p("At the start of business day set the fuel prices of day once by clicking on",
      span("Set Fuel Price", style = "color:blue"),
    ". 
    After setting the fuel prices click on", 
    span("Purchase Fuel", style = "color:blue")),
    tabsetPanel(
            tabPanel("Set Fuel Price", 
                     sliderInput("unleaded","Unleaded Petrol:",min = 130,max = 145, value = 137),
                     sliderInput("diesel","Diesel:",min = 110,max = 120, value = 115),
                     sliderInput("lpg","LPG Gas:",min = 90,max = 100, value = 95)
            ),
            tabPanel("Purchase Fuel", 
                     selectInput("fuelType","Select your fuel type:", choices=c("Select Fuel Type", "Unleaded Petrol","Diesel","LPG Gas")),
                     sliderInput("quantity","Select number of litres:",min = 0,max = 100, value = 0)
            )
    )
 ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h2("Fuel APP"),
       p("Fuel APP is a point of sale application used by",
         span("Fuel Attendant", style = "color:blue"),
" to set fuel prices and perform daily sales"),
       h3("Today's Fuel Unit Price"),
       tableOutput('fuelprices'),
       textOutput("fuelTotalPrice")
    )
  )
))
