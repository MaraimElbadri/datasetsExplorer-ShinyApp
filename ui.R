library(shiny)
library(markdown)


# Define UI for Shiny application
shinyUI(pageWithSidebar(
        
        # Application title
        headerPanel("Datasets Explorer - DDP - Course Project"),
        
        # Sidebar with controls used to select a dataset and specify the number
        # of observations to view. 
        sidebarPanel(
      
                 #Drop down list to choose a dataset
                selectInput("dataset", "Choose a dataset:",
                            choices = c("pressure","rock", "cars")),
        
                br(),
        
                numericInput("obs", "Number of observations to view:", 10),
        
                #Help text
                helpText("Note: The table view will only show the specified numbers", 
                         "of observations, the plot and the summary will be based on",
                         "the full dataset."),
        
                # The user explicitly needs to click the button to render the output.
                submitButton('Submit')
        ),
        
        # Show a tabset that includes a plot, summary, and table view
        # of the selected dataset
        mainPanel(
                tabsetPanel(
                        tabPanel("plot", htmlOutput("view")),
                        tabPanel("Table", tableOutput("table")),
                        tabPanel("Summary", verbatimTextOutput("summary")),
                        tabPanel("Documentation",
                                 fluidRow(
                                         column(6,
                                                includeMarkdown("about.md")
                                         )
                                         
                                 )
                        )       
                 )
        )

))

