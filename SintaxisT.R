
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
  geom_point(color = "#0072B2") +
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

p_boxplot_TIMETotal <- ggplot(data, aes(y = TimeTotal)) +
  geom_boxplot(fill = "#56B4E9", color = "black") +
  labs(title = "boxplot TimeTotal", y = "Tiempo en TimeTotal") +
  theme_minimal()

# Crear boxplot interactivo para TIME_PT
p_boxplot_TimeTotalinteractive <- ggplotly(p_boxplot_TIMETotal)

# Guardar el gráfico de boxplot TIME_PT en HTML
htmlwidgets::saveWidget(as_widget(p_boxplot_TimeTotalinteractive), 
                        file = "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/boxplot_TimeTotal.html")



















# Crear boxplot para TIME_SR
p_boxplot_TIME_SR <- ggplot(data, aes(y = TIME_SR)) +
  geom_boxplot(fill = "#009E73", color = "black") +
  labs(title = "boxplot para TIME_SR", y = "Tiempo en TIME_SR") +
  theme_minimal()

# Crear boxplot interactivo para TIME_SR
p_boxplot_TIME_SR_interactive <- ggplotly(p_boxplot_TIME_SR)

# Guardar el gráfico de boxplot TIME_SR en HTML
htmlwidgets::saveWidget(as_widget(p_boxplot_TIME_SR_interactive), 
                        file = "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/boxplot_TIME_SR.html")

# Crear boxplot para TIME_SR
p_boxplot_TIME_PT <- ggplot(data, aes(y = TIME_PT)) +
  geom_boxplot(fill = "lightgreen", color = "black") +
  labs(title = "boxplot para TIME_PT", y = "Tiempo en TIME_PT") +
  theme_minimal()

# Crear boxplot interactivo para TIME_SR
p_boxplot_TIME_PT_interactive <- ggplotly(p_boxplot_TIME_PT)

# Guardar el gráfico de boxplot TIME_SR en HTML
htmlwidgets::saveWidget(as_widget(p_boxplot_TIME_PT_interactive), 
                        file = "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/boxplot_TIME_PT.html")























# Crear nueva columna TimeTotal
data$TimeTotal <- data$TIME_PT + data$TIME_SR



# Cargar librerías
library(ggplot2)
library(plotly)

# Crear histograma para TimeTotal
p_histogram_TimeTotal <- ggplot(data, aes(x = TimeTotal)) +
  geom_histogram(fill = "#F0E442", color = "black", bins = 30) +
  labs(title = "Distribución de TimeTotal", x = "Tiempo Total", y = "Frecuencia") +
  theme_minimal()

# Convertir el histograma en interactivo
p_histogram_TimeTotal_interactive <- ggplotly(p_histogram_TimeTotal)

# Guardar el histograma interactivo en HTML
htmlwidgets::saveWidget(as_widget(p_histogram_TimeTotal_interactive), 
                        file = "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/histograma_TimeTotal.html")


# Cargar librerías necesarias
library(ggplot2)
library(htmlwidgets)

# Crear histogramas para TIME_SR y TIME_PT
histograma_TIME_SR <- ggplot(data, aes(x = TIME_SR)) +
  geom_histogram(binwidth = 5, fill = "#D55E00", color = "black") +
  labs(title = "Histograma de TIME_SR", x = "TIME_SR", y = "Frecuencia") +
  theme_minimal()

histograma_TIME_PT <- ggplot(data, aes(x = TIME_PT)) +
  geom_histogram(binwidth = 5, fill = "#CC79A7", color = "black") +
  labs(title = "Histograma de TIME_PT", x = "TIME_PT", y = "Frecuencia") +
  theme_minimal()

# Guardar los gráficos como archivos HTML
saveWidget(as_widget(ggplotly(histograma_TIME_SR)), 
           "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/histograma_TIME_SR.html")

saveWidget(as_widget(ggplotly(histograma_TIME_PT)), 
           "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/histograma_TIME_PT.html")

# Imprimir un mensaje de confirmación
cat("Los histogramas se han guardado en los archivos HTML correctamente.")










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






# Asegúrate de que tu data frame se llama 'data'
# y contiene las columnas 'TIME_PT', 'TIME_SR', 'TimeTotal'

# Calcular la matriz de correlación
correlacion <- cor(data[, c("TIME_PT", "TIME_SR", "TimeTotal")], use = "complete.obs")

# Mostrar la matriz de correlación
print(correlacion)

# Cargar las librerías necesarias
library(ggplot2)
library(ggpubr) # Para combinar múltiples gráficos
library(plotly) # Para hacer gráficos interactivos
library(htmlwidgets) # Para guardar en HTML

# Cargar las librerías necesarias
library(ggplot2)
library(plotly) # Para gráficos interactivos
library(htmlwidgets) # Para guardar gráficos en HTML

# Crear gráficos de dispersión
p1 <- ggplot(data, aes(x = TIME_PT, y = TIME_SR)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "#0072B2") +
  labs(title = "Relación entre TIME_PT y TIME_SR", x = "TIME_PT", y = "TIME_SR")

p2 <- ggplot(data, aes(x = TIME_PT, y = TimeTotal)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "#0072B2") +
  labs(title = "Relación entre TIME_PT y TimeTotal", x = "TIME_PT", y = "TimeTotal")

p3 <- ggplot(data, aes(x = TIME_SR, y = TimeTotal)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "#0072B2") +
  labs(title = "Relación entre TIME_SR y TimeTotal", x = "TIME_SR", y = "TimeTotal")

# Convertir los gráficos a objetos plotly
p1_interactive <- ggplotly(p1)
p2_interactive <- ggplotly(p2)
p3_interactive <- ggplotly(p3)

# Combinar los gráficos en un solo objeto plotly
combined_plot <- subplot(p1_interactive, p2_interactive, p3_interactive, nrows = 2, shareX = TRUE, titleX = TRUE)

# Guardar el gráfico combinado en un archivo HTML
html_file_path_combined <- "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/grafico_interactivo_combined.html"

# Guardar el gráfico interactivo combinado
htmlwidgets::saveWidget(combined_plot, html_file_path_combined, selfcontained = TRUE)

# Confirmar que el archivo HTML ha sido guardado
cat("Archivo HTML guardado en:\n", html_file_path_combined, "\n")




install.packages("kableExtra")
# Cargar las librerías necesarias
library(kableExtra)

# Crear la matriz de correlación
correlacion <- matrix(c(1.0000000, 0.2469295, 0.9439561,
                        0.2469295, 1.0000000, 0.5529405,
                        0.9439561, 0.5529405, 1.0000000),
                      nrow = 3, ncol = 3, byrow = TRUE)
rownames(correlacion) <- c("TIME_PT", "TIME_SR", "TimeTotal")
colnames(correlacion) <- c("TIME_PT", "TIME_SR", "TimeTotal")

# Convertir la matriz de correlación a un data frame para usar kable
correlacion_df <- as.data.frame(correlacion)

# Crear la tabla HTML
tabla_correlacion <- kable(correlacion_df, "html", caption = "Matriz de Correlación") %>%
  kable_styling(full_width = F)

# Guardar la tabla en un archivo HTML
html_file_path_table <- "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/tabla_correlacion.html"
save_kable(tabla_correlacion, file = html_file_path_table)

# Confirmar que el archivo HTML ha sido guardado
cat("Tabla HTML guardada en:\n", html_file_path_table, "\n")


# Cargar las librerías necesarias
library(htmltools)   # Para crear contenido HTML
library(htmlwidgets) # Para manejar gráficos interactivos

# Asegúrate de que los gráficos están creados
# Reemplaza con tus gráficos generados anteriormente

# Crear el dashboard
dashboardTIME <- tagList(
  tags$h1("Gráficos interactivos TIME CLA+", style = "color: #4B0082; font-family: Arial, sans-serif; text-align: center;"),
  
  # Fila 1: Gráficos de histogramas
  tags$div(
    style = "display: flex; justify-content: space-around; margin: 20px 0;",
    tags$div(style = "width: 45%;", histograma_TIME_PT),  # Gráfico 1: Histograma TIME_PT
    tags$div(style = "width: 45%;", histograma_TIME_SR)   # Gráfico 2: Histograma TIME_SR
  ),
  
  # Espacio entre los gráficos
  tags$div(style = "height: 40px;"),  # Espacio adicional
  
  # Fila 2: Gráfico de histogramas
  tags$div(
    style = "display: flex; justify-content: center; margin: 20px 0;",
    tags$div(style = "width: 90%;", p_histogram_TimeTotal)  # Gráfico 3: Histograma de Total
  ),
  
  # Espacio entre los gráficos
  tags$div(style = "height: 40px;"),  # Espacio adicional
  
  # Título para el gráfico de box plots
  tags$h2("Box plot", style = "color: #4B0082; font-family: Arial, sans-serif; text-align: center;"),
  
  # Fila 3: Gráficos de box plots
  tags$div(
    style = "display: flex; justify-content: space-around;",
    tags$div(style = "width: 33%;", p_boxplot_TIME_PT),     # Gráfico 4: Boxplot TIME_PT
    tags$div(style = "width: 33%;", p_boxplot_TIME_SR_interactive),     # Gráfico 5: Boxplot TIME_SR
    tags$div(style = "width: 33%;", p_boxplot_TimeTotalinteractive)     # Gráfico 6: Boxplot Total
  ),
  
  # Espacio entre los gráficos
  tags$div(style = "height: 40px;"),  # Espacio adicional
  
  # Título para el gráfico de dispersión
  tags$h2("Dispersión", style = "color: #4B0082; font-family: Arial, sans-serif; text-align: center;"),
  
  # Fila 4: Gráfico de dispersión
  tags$div(
    style = "display: flex; justify-content: center; margin: 20px 0;",
    tags$div(style = "width: 80%;", combined_plot)  # Gráfico 7: Interactivo
  ),
  
  # Espacio entre los gráficos
  tags$div(style = "height: 40px;"),  # Espacio adicional
  
  # Agregar la tabla de correlación
  tags$h2("Matriz de Correlación", style = "color: #4B0082; font-family: Arial, sans-serif; text-align: center;"),
  tags$div(
    style = "display: flex; justify-content: center; align-items: center;",  # Centrar la tabla
    tags$iframe(src = "tabla_correlacion.html", style = "width: 50%; height: 250px; border: none; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);") # Ajusta el tamaño y añade estilo
  ),
  
  # Estilo CSS para mejorar la tabla
  tags$style(HTML("
    table {
      width: 100%;
      border-collapse: collapse;
    }
    th, td {
      padding: 12px;
      text-align: center;
      border: 1px solid #ddd;
    }
    th {
      background-color: #4B0082; /* Cambia el color del fondo del encabezado */
      color: white; /* Cambia el color del texto del encabezado */
    }
    tr:nth-child(even) {
      background-color: #f9f9f9;
    }
    tr:hover {
      background-color: #f1f1f1;
    }
  "))
)

# Guardar el tablero en un archivo HTML
save_html(dashboardTIME, file = "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/dashboardTIME.html")

# Visualizar el archivo HTML en el navegador
browseURL("D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/dashboardTIME.html")






















class(histograma_TIME_PT)
class(histograma_TIME_SR)
class(p_boxplot_TIME_PT)
class(p_boxplot_TIME_SR)
class(p_boxplot_TIME_SR)

class(p_interactive)




# Convertir los gráficos ggplot a objetos interactivos
histograma_TIME_PT <- ggplotly(histograma_TIME_PT)
histograma_TIME_SR <- ggplotly(histograma_TIME_SR)
p_boxplot_TIME_PT <- ggplotly(p_boxplot_TIME_PT)
p_boxplot_TIME_SR <- ggplotly(p_boxplot_TIME_SR)
p_boxplot_TIME_PT <- ggplotly(p_boxplot_TIME_PT)
p_histogram_TimeTotal <- ggplotly(p_histogram_TimeTotal)





# Cargar las librerías necesarias
library(htmltools)   # Para crear contenido HTML
library(htmlwidgets) # Para manejar gráficos interactivos
library(ggplot2)     # Para crear gráficos
library(plotly)      # Para gráficos interactivos

# Asegúrate de que los gráficos están creados (esto es un ejemplo)
# Por ejemplo, histograma_TIME_PT, histograma_TIME_SR, p_boxplot_TIME_PT, p_boxplot_TIME_SR, p_interactive
# Si aún no están creados, debes definirlos antes de continuar.

# Convertir gráficos a interactivos (si no lo has hecho)
histograma_TIME_PT <- ggplotly(histograma_TIME_PT)
histograma_TIME_SR <- ggplotly(histograma_TIME_SR)
p_boxplot_TIME_PT <- ggplotly(p_boxplot_TIME_PT)
p_boxplot_TIME_SR <- ggplotly(p_boxplot_TIME_SR)

# Guardar cada gráfico en un archivo HTML separado
saveWidget(histograma_TIME_PT, file = "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/histograma_TIME_PT.html")
saveWidget(histograma_TIME_SR, file = "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/histograma_TIME_SR.html")
saveWidget(p_boxplot_TIME_PT, file = "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/boxplot_TIME_PT.html")
saveWidget(p_boxplot_TIME_SR, file = "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/boxplot_TIME_SR.html")
saveWidget(p_interactive, file = "D:/OneDrive - Universidad Iberoamericana, A.C/2024/Analisis Luis/Time Cla+/grafico_dispersión.html")
