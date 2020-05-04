library(shiny) 

Average_Factor<-function(Databases,Data_Analytics,Project_Management) {(Databases + Data_Analytics + Project_Management)/3}

diagnostic_f<-function(Databases, Data_Analytics, Project_Management){
  Average_value<-(Databases + Data_Analytics + Project_Management)/3
  ifelse(Average_value<35,"Failed", ifelse(Average_value >=35 & Average_value<50 ,"You Get Pass Class",ifelse(Average_value >= 50 & Average_value < 70 ,"You Get Second Class'",ifelse(Average_value>=70 ,"You Get distinction")))
)}

shinyServer(
  function(input, output) {
    
    output$inputdatabasesmark <- renderPrint({input$Databases})
    output$inputdataAnalyticsmark <- renderPrint({input$Data_Analytics})
    output$inputprojectmanagementmark <- renderPrint({input$Project_Management})
    output$estimation <- renderPrint({Average_Factor(input$Databases,input$Data_Analytics,input$Project_Management)})
    output$diagnostic <- renderPrint({diagnostic_f(input$Databases,input$Data_Analytics,input$Project_Management)})
  } 
)