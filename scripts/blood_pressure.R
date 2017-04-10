#install.packages("ggthemes")
library(ggthemes)
time <- rep(c(0,40, 80, 120),2)
time
bp <- c(120, 140, 160, 180, 80, 70,60,50)
bp
type <- rep(c('收縮壓', '舒張壓'), each = 4 )
type

df1 <- data.frame(time, bp, type)

ggplot(df1, aes(time, bp, colour = type))+
  geom_point()+
  geom_line()+
  theme_tufte()+
  scale_x_continuous(limits = c(0, 120))+
  scale_y_continuous(limits = c(40, 200))+
  scale_color_brewer(palette = "Set1")+
  xlab('運動時間(秒數)')+
  ylab('血壓(mmHg)') +
  ggtitle('當一個人運動時間增加時，\n收縮壓會上升，舒張壓會下降', 
          "這個圖表是模擬的示意圖")+
  guides(color=FALSE)+
  annotate('text', x=60, y=170, label = '收縮壓', size = 6, family = "STHeiti")  +
  annotate('text', x=60, y=90, label = '舒張壓', size = 6, family = "STHeiti") +
  theme(plot.title = element_text(size = 20, face = "bold"),
        plot.subtitle = element_text(hjust = 0, size = 12),
        text = element_text(family = "STHeiti"))

  

