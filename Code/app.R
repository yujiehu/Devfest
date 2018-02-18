
library(shiny)
library(tidyverse)
#https://group1project2.shinyapps.io/Project_2_APP/
#Data processing
data2 <- read.csv("test22.csv")
data2

new_data <- data2 %>% group_by(EVENT) %>% 
  filter(!is.na(R))
new_data

# install.packages("leaflet")
#Leaflet is one of the most popular open-source JavaScript libraries for interactive maps
library(leaflet)
# install.packages("plotly")
library(plotly)
##Zeng's data

library(shiny)
## ui
ui <- shinyUI(
    navbarPage(
    "EVENT REPORT",
    id = 'nav',
    tabPanel("Event Report Map", 
             div(class="outer",
                 tags$head(includeCSS("styles.css")),
                 
                 leafletOutput("map", width = "100%", height = "100%")
                 )
             )
    )
  )


# Define server logic required to draw a histogram
server <- shinyServer(function (input, output) {
  ## Page 1
  output$map <- renderLeaflet({
    leaflet(new_data) %>%
      addTiles("EVENTS") %>%
      fitBounds(min(-73.994431), ~min(40.716760), ~max(-73.979817), ~max(40.820694))
  })
  

  observe({
    pal <- colorFactor(c("#2EA9DF","#E9CD4C", "red",'#86C166','#B481BB'), domain=c("car accident","conflicts","fire",'gun shot','noise'))
    
   leafletProxy("map", data = new_data) %>% 
     addTiles() %>%
     addCircles(radius = ~R*100,lng=~LNG,lat=~LAT, weight = 0.2, stroke=F,fillColor = ~pal(EVENT), 
                 fillOpacity = 0.65,popup = ~paste(EVENT))%>% 
     addProviderTiles(providers$CartoDB.Positron)
      #The last one is for white the back ground
  })
  
  
})

# Run the application 
shinyApp(ui = ui, server = server)

