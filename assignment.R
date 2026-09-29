# загружаем нужные пакеты
library(languageR)
library(ggplot2)

# загружаем датасет
meta <- oldFrenchMeta

# допишите ваш код ниже
# постройте в ggplot столбиковую диаграмму (_bar), 
# показывающую распределение произведений по темам; цветом-заливкой закодируйте жанр; 
meta |> 
  # ваш код здесь
ggplot(aes(x = Topic, fill = Genre) +
       geom_bar() +
       scale_fill_manual(values = c(
         "poetry" = "navy",
         "prose" = "darkgreen"
         ))+
  # уберите названия осей; добавьте заголовок "Old French Data"
  # ваш код здесь
       labs(
         x = NULL,
         y = NULL,
         title = "Old French Data"
         ) +
  # поверните координатную ось; 
  # ваш код здесь
       coord_flip() +
  # поменяйте тему оформления на черно-белую (bw) 
       theme_bw()

# !!!! сохраните график как объект в окружении под именем g
       g
# !!!!вызов class(g) должен возвращать "gg"     "ggplot"
       class(g)
       view(meta)
