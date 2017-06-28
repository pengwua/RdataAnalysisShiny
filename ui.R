## ui.R ##
library(shiny)
library(shinydashboard)

ui<-dashboardPage(
  
  #dashboard
  dashboardHeader(title = "My Dashboard",
    dropdownMenu(type = "messages",
                 messageItem(
                   from = "Sales Dept",
                   message = "Sales are steady this month."
                 ),
                 messageItem(
                   from = "New User",
                   message = "How do I register?",
                   icon = icon("question"),
                   time = "12:45"
                 ),
                 messageItem(
                   from = "Support",
                   message = "The new server is ready.",
                   icon = icon("life-ring"),
                   time = "2017-06-20"
                 )
            ),
    dropdownMenu(type = "notifications",
                 notificationItem(
                   text = "5 new users today",
                   icon("users")
                 ),
                 notificationItem(
                   text = "12 items delivered",
                   icon("truck"),
                   status = "success"
                 ),
                 notificationItem(
                   text = "Server load at 86%",
                   icon = icon("exclamation-triangle"),
                   status = "warning"
                 )
              ),
    dropdownMenu(type = "tasks", badgeStatus = "success",
                 taskItem(value = 90, color = "green",
                          "Documentation"
                 ),
                 taskItem(value = 17, color = "aqua",
                          "Project X"
                 ),
                 taskItem(value = 75, color = "yellow",
                          "Server deployment"
                 ),
                 taskItem(value = 80, color = "red",
                          "Overall project"
                 )
    )
  ),
  dashboardSidebar(
    sidebarMenuOutput("menu"),
    textOutput("res")
  ),
  dashboardBody(
    tabItems(
      tabItem("dashboard", "Dashboard tab content"),
      tabItem("t_subitem1","财务综合分析"),
      tabItem("t_subitem2", "销售主题"),
      tabItem("t_subitem3", "财务主题"),
      tabItem("t_subitem4", "人力资源主题"),
      tabItem("t_subitem5", "市场营销主题"),
      tabItem("theme", "Theme tab content"),
      tabItem("subitem1", "Sub-item 1 tab content"),
      tabItem("subitem2", "Sub-item 2 tab content") 
    )
  )
)
