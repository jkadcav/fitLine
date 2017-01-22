#plots scatter with line of best fit
fitLine<-function(RBM,TIME){

  lin.mod <- lm(RBM~TIME)

  pr.lm <- predict(lin.mod)


  par(mfrow=c(2,2))
  x<-plot(TIME, RBM)
  x<-lines(pr.lm~TIME, col="blue", lwd=2)
  return(x)
}
