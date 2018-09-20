
function(input, output, session) {

 rate1<-reactiveValues(span=NULL)
 name1<-reactiveValues(span=NULL)
 
 rate2<-reactiveValues(span=NULL)
 name2<-reactiveValues(span=NULL)
 
 observeEvent(input$sub,{
   rate1$span<-c(rate1$span,input$rate)
   name1$span<-c(name1$span,paste(input$name," ,"))
 })
 
 observeEvent(input$sub1,{
   rate2$span<-c(rate2$span,input$rate1)
   name2$span<-c(name2$span,paste(input$name1," ,"))
 })
 
 output$plot1<-renderPlot({
   stripchart(x=c(0,rate1$span), method = "stack", offset = .5, at = .15, pch = 19, 
              main = "Exercise Treatment", xlab = "Number of beats",col="red",xlim=c(50,200))
   grid()
 })
 
 output$plot2<-renderPlot({
   stripchart(x=c(0,rate2$span), method = "stack", offset = .5, at = .15, pch = 19, 
              main = "Sitting Treatment", xlab = "Number of beats",col="blue",xlim=c(50,200))
   grid()
 })
 
 output$names1<-renderText({name1$span})
 output$names2<-renderText({name2$span})
 
}
