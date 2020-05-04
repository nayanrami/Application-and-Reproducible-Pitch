library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Engineering Exam Marks Calculation"),
    
    sidebarPanel(
      numericInput('Databases', 'C Programming', 80,min = 0, max = 100, step = 0.1) ,
      numericInput('Data_Analytics', 'Java Programming', 97, min = 0, max = 100, step = 0.1),
      numericInput('Project_Management', 'Final Year Project',64, min = 0, max = 100, step = 0.1)
    ), 
    mainPanel(
      p('In Exam of final year engineering '),
      p('The outcome of the three subjects was interpreted as follows:'),
      tags$div(
        tags$ul(
          tags$li('Average <35,       : Failed'),
          tags$li('Average [35-50] , : You Get Pass Class'),
          tags$li('Average [50-70] ,   :You Get Second Class'),
          tags$li('Average >= 70 :  You Get distinction ')
        )
      ),
      
      h4('Taking into account the values entered by you:'), 
      p('C Programming'), verbatimTextOutput("inputdatabasesmark"),
      p('Java Programming'), verbatimTextOutput("inputdataAnalyticsmark"),
      p('Final Year Project'), verbatimTextOutput("inputprojectmanagementmark"),h4('Your calulated AVERAGE RESULT is:'),
      verbatimTextOutput("estimation"),
      p('It means that you have:'),strong(verbatimTextOutput("diagnostic"))
      
    )
    
  )   
)