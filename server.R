#
# This is the server logic of a Shiny Fuel web application.
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  #Display fuel unit prices for the day using input$unleaded, input$diesel and input$lpg from ui.R        
  output$fuelprices <- renderTable({
          fuelData <- matrix(c(input$unleaded,input$diesel,input$lpg),nrow=1)
          colnames(fuelData) <- c("Unleaded_Petrol", "Diesel", "LPG_Gas")
          fuelData <- data.frame(fuelData)
          fuelData
          })
  output$fuelTotalPrice <- renderText({
    #Display fuel unit prices for the day using input$unleaded, input$diesel and input$lpg from ui.R
          
          if (input$fuelType == "Select Fuel Type"){
                  "Click on Purchase Fuel tab on left to select Fuel Type and enter number of litres enter required"
          }
          else if (input$fuelType == "Unleaded Petrol") {
                  if(input$quantity > 0){
                        totalPrice <- input$unleaded * input$quantity
                        paste(input$quantity, "litres of ",input$fuelType ,"cost", totalPrice)
                  } else "Enter number of litres on Purchase Fuel tab"
          } else if (input$fuelType == "Diesel") {
                  if(input$quantity > 0){
                        totalPrice <- input$diesel * input$quantity
                        paste(input$quantity, "litres of ",input$fuelType ,"cost", totalPrice)
                  } else "Enter number of litres on Purchase Fuel tab"
          } else if (input$fuelType == "LPG Gas") {
                  if(input$quantity > 0){
                        totalPrice <- input$lpg * input$quantity
                        paste(input$quantity, "litres of ",input$fuelType ,"cost", totalPrice)
                  } else "Enter number of litres on Purchase Fuel tab"
          } 

  })
  
})
