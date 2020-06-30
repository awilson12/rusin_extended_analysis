rusin<-read.csv('rusin_mouthte.csv')


require(ggplot2)
require(ggpubr)

#overall distribution of TE
ggplot(rusin)+geom_histogram(aes(x=TE,y=..density..,fill=Organism),color="black",binwidth=,alpha=0.5)+
  geom_density(aes(x=TE,fill=Organism),alpha=0.5)+
  scale_x_continuous(name="Transfer Efficiency (%)")+
  scale_y_continuous(name="Density")+
  geom_vline(xintercept=mean(rusin$TE.),linetype="solid",color="red",size=1)+
  geom_vline(xintercept=(mean(rusin$TE.)+2*sd(rusin$TE.)),linetype="dashed",color="red")+
  geom_vline(xintercept=(mean(rusin$TE.)-2*sd(rusin$TE.)),linetype="dashed",color="red")+
  theme_pubr()+
  facet_wrap(~Organism)

windows()
ggplot(rusin)+geom_violin(aes(x=Organism,y=TE,fill=Organism),draw_quantiles = c(0.25,0.5,0.75),alpha=0.7)+
  scale_fill_discrete(name="",labels=c(expression(italic('M. luteus')),"PRD-1",expression(italic('S. rubidea'))))+
  scale_x_discrete(name="",labels=c(expression(italic('M. luteus')),"PRD-1",expression(italic('S. rubidea'))))+
  scale_y_continuous(name="Transfer Efficiency (%)")+
  theme_pubr()+
  theme(legend.position = "none")

#relationship between TE and inoculation concentration?
ggplot(rusin)+geom_point(aes(x=rusin$X5ul.Innoculum.log10,y=rusin$TE.))
