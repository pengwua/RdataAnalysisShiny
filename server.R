library(shiny)
library(shinydashboard)
library(recharts)

server <- function(input, output, session) {
  output$res <- renderText({
    paste("You've selected:", input$tabs)
  })
  output$menu <- renderMenu({
    sidebarMenu(
      # Setting id makes input$tabs give the tabName of currently-selected tab
      id = "tabs",
      
      menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
      menuItem("主题分析", icon = icon("th"), tabName = "widgets",
          menuSubItem("财务综合分析", tabName = "t_subitem1",icon = icon("bar-chart-o")),
          menuSubItem("销售主题", tabName = "t_subitem2",icon = icon("bar-chart-o")),
          menuSubItem("财务主题", tabName = "t_subitem3",icon = icon("bar-chart-o")),
          menuSubItem("人力资源主题", tabName = "t_subitem4",icon = icon("bar-chart-o")),
          menuSubItem("市场营销主题", tabName = "t_subitem5",icon = icon("bar-chart-o"))
      ),
     
      menuItem("统计图表", icon = icon("th"),
          menuSubItem("信息图", tabName = "subitem1",icon = icon("bar-chart-o")),
          menuSubItem("地图钻取和联动", tabName = "subitem2",icon = icon("bar-chart-o"))
      ),
      
      menuItem("大屏展示",icon=icon("th"),
          menuSubItem("综合分析", tabName = "s_subitem1",icon = icon("bar-chart-o")),
          menuSubItem("全国销售份额", tabName = "s_subitem2",icon = icon("bar-chart-o")),
          menuSubItem("各地区销售份额", tabName = "s_subitem3",icon = icon("bar-chart-o")),
          menuSubItem("2017上半年收入份额", tabName = "s_subitem4",icon = icon("bar-chart-o")),
          menuSubItem("销售份额市场分析", tabName = "s_subitem5",icon = icon("bar-chart-o")),
          menuSubItem("业务预警分析", tabName = "s_subitem6",icon = icon("bar-chart-o")),
          menuSubItem("实时服务器监控", tabName = "s_subitem7",icon = icon("bar-chart-o"))
      )
    )
  })
}
