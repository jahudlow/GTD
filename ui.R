library(shiny)
library(shinydashboard)
library(leaflet)
library(data.table)
library(ggplot2)

ui <- pageWithSidebar(
    headerPanel(h3("Deaths resulting from Terrorism (in 25 most affected countries)")),
    sidebarPanel(
        fluidRow(
            column(6,radioButtons("xax","X-Axis:", c("1"="Year","2"="Annual.Avg"))),
            column(6,checkboxGroupInput("yax","Y-axis:", c("1"="Annual Avg.","2"="Afghanistan")))
        )
    ),
    mainPanel(
        plotOutput("plot1"),
        ("This app provides an interactive comparison of the number of terrorism related deaths 
        occuring in 25 countries between 1970 and 2015. These particular countries were selected
        because they had the highest overall number of recorded terrorism deaths during this 
        time period."), br(), br(),
        ("To use the app, the user can select either the "), em("Year"), (" or the "), em("Annual 
        Average "), ("number of deaths from terrorism radio buttons for the X-Axis, and one or 
        more "), 
        em("Countries"), ("or again the average, from a set of checkboxes for the Y-Axis. 
        In addition to plotting the points on each axis the app fits a LOESS Curve to each set 
        of variables to show the trend in terrorism related deaths."), br(), br(),
        ("The data used in this app was derived from the "), strong("Ecdat "),
        em("Global Terrorism Database"),("(GTD). ")
    )
)