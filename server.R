temp <- tempfile()
download.file("http://nces.ed.gov/ipeds/datacenter/data/HD2014.zip",temp, mode="wb")
unzip(temp, "hd2014.csv")
dd <- read.table("hd2014.csv", sep=",", header=T)

state_df <- as.data.frame(table(dd$STABBR))

institutionsByState <- function(state) state_df[state_df$Var1==state,2]



shinyServer(
	function(input, output) {
	   output$oid1 = renderPrint({input$id1})
	   output$oid2 = renderPrint({institutionsByState(input$id1)})
	   output$myhist <- renderPlot({
hist(state_df$Freq, col="lightgreen", breaks=8, main="Distribution of Institutions Across US States and Territories", xlab="# of Institutions", ylab="# of States/Territories", ylim=c(0,35), labels=TRUE)
abline(v = median(state_df$Freq), col="royalblue", lwd=5)
text(median(state_df$Freq),25,median(state_df$Freq), pos=4)
abline(v = institutionsByState(input$id1), col="red", lwd = 5)
text(institutionsByState(input$id1), 22.5, institutionsByState(input$id1), pos=4)
legend("topright", inset=0.05, title="Legend", c("Median # of Institutions per State/Territory", "# of Institutions for Selected State"), lwd=2, col=c("royalblue","red"))
})
	}
)