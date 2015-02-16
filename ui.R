library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Distributions simulation"),
  sidebarPanel(
    numericInput('n', 'Sample size:', 1000, min = 200, max = 10000, step = 200),
    radioButtons("d", "Distribution:",
                       c("Normal" = "1",
                         "Exponential" = "2",
                         "T (df=10)" = "3"))
  ),
  mainPanel(
    tabsetPanel(id = "tabSelected",
                tabPanel("Documentation", 
                         p(),
                         p("This aplication shows a sample simulation of the distribution you selected. To use this application, you must type the sample size and distribution you want to simulate. You can change this parameters whenever you want."),
                         p(),
                         p("When you are ready, please select the \"Results\" panel")
                         
                         ),
                tabPanel("Results",
                         h3('Plotting...'),
                         p('','Select "Documentation" tab to see the app documentation'),
                         plotOutput('plotD')
                )
  )
)))