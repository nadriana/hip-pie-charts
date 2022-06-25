library(ggplot2)

pasteles <- read.csv("base_pasteles.csv", na.strings = "#N/A")


ggplot(pasteles, aes(x = pos_hora, y = medico_id, colour = medico_metodo)) +
  scale_x_continuous(limits = c(0,12),
                     breaks = c(0,1,2,3,4,5,6,7,8,9,10,11,12)) +
  scale_y_continuous(limits = c(0,9), 
                     breaks = pasteles$medico_id) +
  geom_segment(aes(xend = ext_hora, ystart = medico_id, yend = medico_id), size = 2) +
  theme(axis.title.x = element_blank(),
        axis.text.x = element_text(size = 7), 
        axis.title.y = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank()) +
  ggtitle("Resultados de lecturas y diagnóstico") +
  theme(plot.title = element_text(hjust = 0.5)) +
  coord_polar() +
  facet_wrap(~paciente_id)

  
