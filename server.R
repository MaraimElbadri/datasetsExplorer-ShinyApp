library(shiny)
library(googleVis)

# Define server logic for shiny app
shinyServer(function(input,output){
         
        # Reactive expression to choose the dataset. This is 
        # called whenever the inputs change. The renderers defined 
        # below then all use the value computed from this expression -> data
        data <- reactive({
          switch(input$dataset,
                 "pressure" = pressure,
                 "rock" = rock,
                 "cars" = cars)
        })
        
    
#         xTitle <- reactive({
#                 paste("{title:\'",names(data())[1],"\'}", sep="")
#         })
        # Generate a Scatter Chart of the specified data. Also uses the inputs to build the 
        # plot label. Note that the dependencies on both the inputs and
        # the 'data' reactive expression are both tracked, and all expressions 
        # are called in the sequence implied by the dependency graph
        #xTitle <- paste("{title:\'",xTitle,"\'}", sep="") # names(data())[1]
        #yTitle <- names(data())[2]
        output$view <- renderGvis({
                gvisScatterChart(data(),
                                 options=list(title="Scatter Chart for datasets",
                                              hAxis="{title:'temperature (deg c)'}",
                                              vAxis="{title:'pressure (mm)'}",legend="top",   width=600,
                                              height=400))
                })
          
        # Generate a summary of the dataset
        output$summary <- renderPrint({
          dataset <- data()
          summary(dataset)
        })
          
        # Show the first "n" observations and generate an HTML table view of the data
        output$table <- renderTable({
          head(data(), n = input$obs)
        })
    
        }      
  )