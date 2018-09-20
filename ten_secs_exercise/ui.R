

shinyUI(navbarPage(strong(span("Lab 1.3.1", style="color:#0983ed")),
                   ####--------------1. Wildfire-----------------
                   tabPanel("10s Exercise",{
                     fluidRow(
                       column(3,
                              wellPanel(
                                strong("Heads: Exercise Treatment",style="color: #a5011d; font-size: 20px"),
                                
                                textInput('name',label="Write down your name:"),
                                sliderInput('rate',label="Number of pulse beats per minute:",min=50,max=200,value=100),
                                actionButton('sub', label="Submit", 
                                             style="color: #fff; background-color: #337ab7; border-color: #2e6da4"),
                                br()
                              ),
                              
                              # wellPanel(
                              #   actionButton("goButtonLm", "Linear Regression",style="color: #fff; background-color: #337ab7; border-color: #2e6da4")
                              # ),
                              
                              wellPanel(
                                strong("Tails: Sitting treatment",style="color: #a5011d; font-size: 20px"),
                                
                                textInput('name1',label="Write down your name:"),
                                sliderInput('rate1',label="Number of pulse beats per minute:",min=50,max=200,value=100),
                                actionButton('sub1', label="Submit", 
                                             style="color: #fff; background-color: #337ab7; border-color: #2e6da4")
                              )
                       ),
                       column(9,
                              plotOutput("plot1"),
                              plotOutput("plot2"),
                              wellPanel(
                                textOutput("names1")
                              ),
                              wellPanel(
                                textOutput("names2")
                              )
                       )
                     )
                   })
                   
)
)
