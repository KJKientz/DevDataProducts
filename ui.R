library(shiny)

shinyUI(pageWithSidebar(


	headerPanel("# of Higher Ed Institutions, by State"),
	sidebarPanel(
		selectInput("id1", label = h3("Select a state"), choices = list(
"Alaska" = "AK",
"Alabama" = "AL",
"Arkansas" = "AR",
"American Samoa" = "AS",
"Arizona" = "AZ",
"California" = "CA",
"Colorado" = "CO",
"Connecticut" = "CT",
"District of Columbia (Washington, D.C.)" = "DC",
"Delaware" = "DE",
"Florida" = "FL",
"Federal States of Micronesia" = "FM",
"Georgia" = "GA",
"Guam" = "GU",
"Hawaii" = "HI",
"Iowa" = "IA",
"Idaho" = "ID",
"Illinois" = "IL",
"Indiana" = "IN",
"Kansas" = "KS",
"Kentucky" = "KY",
"Louisiana" = "LA",
"Massachusetts" = "MA",
"Maryland" = "MD",
"Maine" = "ME",
"Marshall Islands" = "MH",
"Michigan" = "MI",
"Minnesota" = "MN",
"Missouri" = "MO",
"Northern Mariana Islands" = "MP",
"Mississippi" = "MS",
"Montana" = "MT",
"North Carolina" = "NC",
"North Dakota" = "ND",
"Nebraska" = "NE",
"New Hampshire" = "NH",
"New Jersey" = "NJ",
"New Mexico" = "NM",
"Nevada" = "NV",
"New York" = "NY",
"Ohio" = "OH",
"Oklahoma" = "OK",
"Oregon" = "OR",
"Pennsylvania" = "PA",
"Puerto Rico" = "PR",
"Palau" = "PW",
"Rhode Island" = "RI",
"South Carolina" = "SC",
"South Dakota" = "SD",
"Tennessee" = "TN",
"Texas" = "TX",
"Utah" = "UT",
"Virginia" = "VA",
"Virgin Islands" = "VI",
"Vermont" = "VT",
"Washington" = "WA",
"Wisconsin" = "WI",
"West Virginia" = "WV",
"Wyoming" = "WY"), selected=1)
	),
	mainPanel(
		h3('State Higher Ed Institutions'),
		h4('State Postal Abbreviation'),
		verbatimTextOutput("oid1"),
		h4('Number of Institutions in this state'),
		verbatimTextOutput("oid2"),		
		plotOutput("myhist")


)
))


