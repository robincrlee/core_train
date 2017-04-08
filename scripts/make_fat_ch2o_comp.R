library(tidyverse)
library(RColorBrewer)
Sys.setlocale(category = "LC_ALL", locale = "zh_TW.UTF-8")
data <- read_csv ("../data/fat_ch2o_lean_fat.csv")
str(data)
names(data) <- c("body_type", "timing", "fuel", "leg_energy_exp_pct")
data$timing <- factor(data$timing, levels = c("飯前", "飯後（胰島素分泌）"))
data$timing

ggplot(data, aes(timing, leg_energy_exp_pct))+
  facet_wrap(  ~ body_type, nrow = 2, strip.position = "top")+
  geom_bar(position = "stack", stat = "identity", aes(fill = fuel))+
  xlab('活動時間')+
  ylab('能量來源百分比') +
  ggtitle('人體活動能量的來源是一個變動的比例', 
          "飯後活動時，瘦的人主要使用葡萄糖")+
    theme_tufte()+
  theme(plot.title = element_text(size = 16, face = "bold"),
        plot.subtitle = element_text(hjust = 0, size = 12),
        text = element_text(family = "STHeiti"))+
  scale_fill_brewer( palette = "Set1", guide = guide_legend(title = "能量來源"))
  
  scale_fill_brewer(palette = "Set1")
  

