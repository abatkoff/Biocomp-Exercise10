###exercise10
###Abigayle Batkoff

##problem1

library(ggplot2)

testscores<-read.csv("/Users/abigaylebatkoff/Downloads/MBA Year 1/Biocomputing/Biocomp-Exercise10/SP.csv", header=TRUE)

ggplot(data=testscores,aes(x=reading.score,y=writing.score))+
  geom_point()+
  xlab("reading score")+
  ylab("writing score")+
  theme_classic()+
  stat_smooth()


##problem2

data<-read.csv("/Users/abigaylebatkoff/Downloads/MBA Year 1/Biocomputing/Biocomp-Exercise10/data.txt", header=TRUE)

ggplot(data)+
  geom_bar(aes(x=region,y=observations),position = "dodge",stat = "summary",fun = "mean")+
  xlab("region")+
  ylab("population mean")+
  theme_classic()


ggplot(data,aes(x=region,y=observations))+
  geom_point()+
  geom_jitter(alpha =.1)
  xlab("region")+
  ylab("observations")+
  theme_classic()

#the bar chart and the scatter plot tell different stories because much less detail is gleaned from the different regions when just looking at the means in the bar chart.
#when just looking at the means, each region looks very similar, but when you look at their distribution, you're told a different story.
#the east and west regions have a wide range of evenly spread observations, the north region has observations all very close to one another, and the south region has observations in two distinct clusters.
#this is all information absent from the bar chart.
