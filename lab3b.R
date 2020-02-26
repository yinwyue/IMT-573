data <- read.csv("data.csv", header=TRUE)
library(ggplot2)
# I feel the number of death unimportant, as the number related to the number of people pregnant, and the valuable indicator should be the rate.
# The number of death will also mislead people on finding the most server group.
# I divided the chart into two charts as I'm new to R and I'm still looking for better solution to this lab.
# The code here shows the relationship between Race/Ethnicity and the death rate per 100,000 live births.
ggplot(data=data, aes(x=ï..Race.Ethnicity, y=data$Rate.per.100.000.live.births)) + 
  geom_bar(aes(alpha=ï..Race.Ethnicity),colour="black",fill="red", width=.5, stat="identity") + 
  guides(fill=FALSE) +
  xlab("Race/Ethnicity") + ylab("Rate per 100,000 live births") +
  ggtitle("Rate distribution by Race")

# The code here shows the relationship between Age group and the death rate per 100,000 live births.
ggplot(data=data, aes(x=data$Age, y=data$Rate.per.100.000.live.births.1)) + 
  geom_bar(aes(alpha=Age),colour="black",fill="orange", width=.5, stat="identity") + 
  guides(fill=FALSE) +
  xlab("Age") + ylab("Rate per 100,000 live births") +
  ggtitle("Rate distribution by Race")

 