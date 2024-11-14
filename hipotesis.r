#hipotesis 3
library(dplyr)

data <- read.csv("GEIH_2023_warzone.csv")

data_select <- data %>%
  select(directorio, inglabo, mayor_educacion, sexo)

#0-1
data_0_1_filter <- data %>%
  select(directorio, inglabo, mayor_educacion, sexo, edad)%>%
  filter((is.na(mayor_educacion) | mayor_educacion == 1) & sexo == 2)%>%
  group_by(directorio, mayor_educacion)%>%
  summarise(
    avg_sal = mean(inglabo, na.rm = TRUE),
    avg_hijos = mean(edad < 18, na.rm = TRUE)
  )


correlation_test <- cor.test(data_0_1_filter$avg_sal, data_0_1_filter$avg_hijos, method = "pearson")
print(correlation_test)

#2-3
data_2_3_filter <- data %>%
  select(directorio, inglabo, mayor_educacion, sexo, edad)%>%
  filter((mayor_educacion == 2 | mayor_educacion == 3) & sexo == 2)%>%
  group_by(directorio, mayor_educacion)%>%
  summarise(
    avg_sal = mean(inglabo, na.rm = TRUE),
    avg_hijos = mean(edad < 18, na.rm = TRUE)
  )


correlation_test <- cor.test(data_2_3_filter$avg_sal, data_2_3_filter$avg_hijos, method = "pearson")
print(correlation_test)

#4-5

data_4_5_filter <- data %>%
  select(directorio, inglabo, mayor_educacion, sexo, edad)%>%
  filter((mayor_educacion == 4 | mayor_educacion == 5) & sexo == 2)%>%
  group_by(directorio, mayor_educacion)%>%
  summarise(
    avg_sal = mean(inglabo, na.rm = TRUE),
    avg_hijos = mean(edad < 18, na.rm = TRUE)
  )


correlation_test <- cor.test(data_4_5_filter$avg_sal, data_4_5_filter$avg_hijos, method = "pearson")
print(correlation_test)


#6-7

data_6_7_filter <- data %>%
  select(directorio, inglabo, mayor_educacion, sexo, edad)%>%
  filter((mayor_educacion == 6 | mayor_educacion == 7) & sexo == 2)%>%
  group_by(directorio, mayor_educacion)%>%
  summarise(
    avg_sal = mean(inglabo, na.rm = TRUE),
    avg_hijos = mean(edad < 18, na.rm = TRUE)
  )


correlation_test <- cor.test(data_6_7_filter$avg_sal, data_6_7_filter$avg_hijos, method = "pearson")
print(correlation_test)

#8-9
data_8_9_filter <- data %>%
  select(directorio, inglabo, mayor_educacion, sexo, edad)%>%
  filter((mayor_educacion == 8 | mayor_educacion == 9) & sexo == 2)%>%
  group_by(directorio, mayor_educacion)%>%
  summarise(
    avg_sal = mean(inglabo, na.rm = TRUE),
    avg_hijos = mean(edad < 18, na.rm = TRUE)
  )


correlation_test <- cor.test(data_8_9_filter$avg_sal, data_8_9_filter$avg_hijos, method = "pearson")
print(correlation_test)

#9-10
data_9_10_filter <- data %>%
  select(directorio, inglabo, mayor_educacion, sexo, edad)%>%
  filter((mayor_educacion == 9 | mayor_educacion == 10) & sexo == 2)%>%
  group_by(directorio, mayor_educacion)%>%
  summarise(
    avg_sal = mean(inglabo, na.rm = TRUE),
    avg_hijos = mean(edad < 18, na.rm = TRUE)
  )


correlation_test <- cor.test(data_9_10_filter$avg_sal, data_9_10_filter$avg_hijos, method = "pearson")
print(correlation_test)
