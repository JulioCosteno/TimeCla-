
install.packages("ggplot2")
install.packages("plotly")



library(readxl)
data <- read_excel("D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/Ibero CDMX Time on Task F24 (1).xlsx")
View(data)

# Instalar ggplot2 si no lo tienes
if(!require(ggplot2)) install.packages("ggplot2")

# Cargar ggplot2
library(ggplot2)

# Cargar librerías
library(ggplot2)
library(plotly)

# Crear gráfico de dispersión con ggplot2
p <- ggplot(data, aes(x = TIME_PT, y = TIME_SR)) +
  geom_point(color = "blue") +
  labs(title = "Gráfico de Dispersión entre TIME_PT y TIME_SR", x = "Tiempo en TIME_PT", y = "Tiempo en TIME_SR") +
  theme_minimal()

# Convertir el gráfico a plotly para que sea interactivo
p_interactive <- ggplotly(p)

# Guardar el gráfico interactivo en HTML
htmlwidgets::saveWidget(as_widget(p_interactive), 
                        file = "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/grafico_dispersión.html")


# Cargar librerías
library(ggplot2)
library(plotly)

# Crear boxplot para TIME_PT
p_boxplot_TIME_PT <- ggplot(data, aes(y = TIME_PT)) +
  geom_boxplot(fill = "lightblue", color = "black") +
  labs(title = "Gráfico de Cajas y Alambres para TIME_PT", y = "Tiempo en TIME_PT") +
  theme_minimal()

# Crear boxplot interactivo para TIME_PT
p_boxplot_TIME_PT_interactive <- ggplotly(p_boxplot_TIME_PT)

# Guardar el gráfico de boxplot TIME_PT en HTML
htmlwidgets::saveWidget(as_widget(p_boxplot_TIME_PT_interactive), 
                        file = "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/boxplot_TIME_PT.html")

# Crear boxplot para TIME_SR
p_boxplot_TIME_SR <- ggplot(data, aes(y = TIME_SR)) +
  geom_boxplot(fill = "lightgreen", color = "black") +
  labs(title = "Gráfico de Cajas y Alambres para TIME_SR", y = "Tiempo en TIME_SR") +
  theme_minimal()

# Crear boxplot interactivo para TIME_SR
p_boxplot_TIME_SR_interactive <- ggplotly(p_boxplot_TIME_SR)

# Guardar el gráfico de boxplot TIME_SR en HTML
htmlwidgets::saveWidget(as_widget(p_boxplot_TIME_SR_interactive), 
                        file = "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/boxplot_TIME_SR.html")
























# Crear nueva columna TimeTotal
data$TimeTotal <- data$TIME_PT + data$TIME_SR



# Cargar librerías
library(ggplot2)
library(plotly)

# Crear histograma para TimeTotal
p_histogram_TimeTotal <- ggplot(data, aes(x = TimeTotal)) +
  geom_histogram(fill = "orange", color = "black", bins = 30) +
  labs(title = "Distribución de TimeTotal", x = "Tiempo Total", y = "Frecuencia") +
  theme_minimal()

# Convertir el histograma en interactivo
p_histogram_TimeTotal_interactive <- ggplotly(p_histogram_TimeTotal)

# Guardar el histograma interactivo en HTML
htmlwidgets::saveWidget(as_widget(p_histogram_TimeTotal_interactive), 
                        file = "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/histograma_TimeTotal.html")











# Resumen estadístico para TimeTotal
summary(data$TimeTotal)



# Identificar outliers en TimeTotal
outliers_TimeTotal <- boxplot.stats(data$TimeTotal)$out
cat("Valores atípicos en TimeTotal:", outliers_TimeTotal, "\n")

# Identificar outliers en TIME_PT
outliers_TIME_PT <- boxplot.stats(data$TIME_PT)$out
cat("Valores atípicos en TIME_PT:", outliers_TIME_PT, "\n")

# Identificar outliers en TIME_SR
outliers_TIME_SR <- boxplot.stats(data$TIME_SR)$out
cat("Valores atípicos en TIME_SR:", outliers_TIME_SR, "\n")

# Identificar outliers en TimeTotal
outliers_TimeTotal <- boxplot.stats(data$TimeTotal)$out
cat("Valores atípicos en TimeTotal:", outliers_TimeTotal, "\n")






boxplot_stats_TIME_PT <- boxplot.stats(data$TIME_PT)
print(boxplot_stats_TIME_PT)


