library(shiny)
library(shinydashboard)
library(leaflet)
library(data.table)
library(ggplot2)

tdeaths <- read.csv("tdeaths.csv")

server <- function(input, output,session) {
    
    observe({
        headers <- names(tdeaths[,2:27])
        yname <- names(tdeaths[,1:2])
        y_options <- list()
        y_options[ headers] <- headers
        x_options <- list()
        x_options[ yname] <- yname
        updateRadioButtons(session, "xax",
                           label = "X-Axis",
                           choices = x_options,
                           selected = "Year")
        updateCheckboxGroupInput(session, "yax",
                                 label = "Y-Axis",
                                 choices = y_options,
                                 selected = "")
    })
    output$plot1 <- renderPlot(
        {
            g <- NULL
            xvars <- input$xax
            yvars <- input$yax
            if (!is.null(xvars) & !is.null(yvars)){
                mtdeaths <- melt(tdeaths,id.vars=xvars,measure.vars=yvars)
                g <- ggplot(data=mtdeaths) + 
                    geom_point(aes_string(x=xvars,y="value",color="variable")) + 
                    stat_smooth(aes_string(x=xvars,y="value",color="variable"),
                                method = "loess", size = 1)
            }
            return(g)
        }
    )
    
}