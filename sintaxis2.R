

install.packages("fmsb")
library(fmsb)

library(ggplot2)
library(fmsb)  # Paquete para gráficos de radar
library(dplyr)

library(dplyr)
library(ggplot2)
library(tidyr)

# Calcular las medias para cada variable por carrera
resumen_por_carrera <- datos_combinados %>%
  group_by(Major) %>%
  summarise(across(all_of(variables_a_analizar), 
                   list(Media = ~ mean(.x, na.rm = TRUE)))) %>%
  pivot_longer(cols = -Major, names_to = "Variable", values_to = "Media")

# Gráfico de barras apiladas
ggplot(resumen_por_carrera, aes(x = Major, y = Media, fill = Variable)) +
  geom_bar(stat = "identity", position = "stack") +
  labs(title = "Promedio de respuestas por Carrera y Variable",
       x = "Carrera",
       y = "Promedio de Respuesta",
       fill = "Variable") +
  theme_minimal() +
  coord_flip()  # Usamos coordenadas giradas para facilitar la visualización
