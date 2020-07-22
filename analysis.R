rusin<-read.csv('rusin_mouthte.csv')

require(ggplot2)
require(ggpubr)

#distribution of TE per organism
windows()
ggplot(rusin)+geom_violin(aes(x=Organism,y=TE,fill=Organism),draw_quantiles = c(0.25,0.5,0.75),alpha=0.7)+
  scale_fill_discrete(name="",labels=c(expression(italic('M. luteus')),"PRD-1",expression(italic('S. rubidea'))))+
  scale_x_discrete(name="",labels=c(expression(italic('M. luteus')),"PRD-1",expression(italic('S. rubidea'))))+
  scale_y_continuous(name="Transfer Efficiency (%)")+
  theme_pubr()+
  theme(legend.position = "none")

#standard deviations

#sd of M. Luteus
sd(rusin$TE[rusin$Organism=="M. Luteus"])

#sd of PRD-1
sd(rusin$TE[rusin$Organism=="PRD-1"])

#sd of S. rubidea
sd(rusin$TE[rusin$Organism=="S. Rubidea"])
