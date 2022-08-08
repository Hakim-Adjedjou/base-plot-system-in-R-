
x<-rnorm(100)
y<-rnorm(100)

#qq plot: 

qqnorm(x)
abline(a=0,b=1)

#A QQ-Plot is used to visually determine how close a sample is to the normal
#distribution

#scatter plot : 
plot(x,y,xlab = "weight",ylab = "height",pch=20)
title("height per weights")
legend("topleft",legend = "data",pch = 20)
#example(points) will show all possible symbols for "pch"
par(mar=c(4,4,2,2))
text(-3,-2,"graph")
abline(a=0,b=1)


#multiple plot in one grid : 
z<-rnorm(100)

par(mfrow=c(2,2))
par(mar=c(2,2,2,2))
plot(x,y,pch=20)
plot(x,z,pch=19)
plot(y,z,pch=22)
plot(x,x,pch=20)

#empty plot : 
plot(x,y,type = "n")

#save the plot as png : 
dev.copy(png , file="graph.png")

#save the plot ina pdf file  : 
pdf(file = "myplot.pdf")

plot(x,y,pch=20)
dev.off()

