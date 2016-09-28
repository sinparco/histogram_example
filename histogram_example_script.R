library(tidyverse)

final.data <- read_csv("finalData.csv")

#Making a Histogram
my.hist <- ggplot(final.data,aes(se.measure))
my.hist <- my.hist + geom_histogram(aes(y= ..count..), binwidth=1, fill="black", color="black")
my.hist <- my.hist + labs(title="Self-esteem Histogram",x="Self-esteem Level", y="Frequency")
my.hist <- my.hist + coord_cartesian(xlim=c(0.5,5.5),ylim=c(0,400))
my.hist <- my.hist + theme_classic()
my.hist <- my.hist + theme(axis.line.x = element_line(colour = 'black', size=0.5, linetype='solid'),
                           axis.line.y = element_line(colour = 'black', size=0.5, linetype='solid'))
my.hist <- my.hist + scale_x_continuous( breaks = seq(0.5,5.5,by=1) )
my.hist <- my.hist + scale_y_continuous( breaks = seq(0,400,by=25), expand=c(0,0) )
  
#Change font size using theme_bw(#)  
print(my.hist)

#quickplot
my.hist <- qplot(se.measure,data=final.data,binwidth=1, fill=I("black"), colour=I("black"))
my.hist <- my.hist + labs(title="Self-esteem Histogram",x="Self-esteem Level", y="Frequency")
my.hist <- my.hist + coord_cartesian(xlim=c(0.5,5.5),ylim=c(0,400))
my.hist <- my.hist + theme_classic()
my.hist <- my.hist + theme(axis.line.x = element_line(colour = 'black', size=0.5, linetype='solid'),
                           axis.line.y = element_line(colour = 'black', size=0.5, linetype='solid'))
my.hist <- my.hist + scale_x_continuous( breaks = seq(0.5,5.5,by=1) )
my.hist <- my.hist + scale_y_continuous( breaks = seq(0,400,by=25), expand=c(0,0) )
