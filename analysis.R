rusin<-read.csv('rusin_mouthte.csv')


require(ggplot2)
require(ggpubr)

ggplot(rusin)+geom_histogram(aes(x=TE.,y=..density..),fill="lightblue",color="black",binwidth=3)+geom_density(aes(x=TE.),fill="grey",alpha=0.5)+
  scale_x_continuous(name="Transfer Efficiency (%)")+
  scale_y_continuous(name="Density")+
  geom_vline(xintercept=mean(rusin$TE.),linetype="solid",color="red",size=1)+
  geom_vline(xintercept=(mean(rusin$TE.)+2*sd(rusin$TE.)),linetype="dashed",color="red")+
  geom_vline(xintercept=(mean(rusin$TE.)-2*sd(rusin$TE.)),linetype="dashed",color="red")+
  theme_pubr()
