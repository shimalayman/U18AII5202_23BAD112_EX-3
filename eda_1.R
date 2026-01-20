print("SHIMAL AYMAN")
print("23BAD112")

# Load required libraries
library(ggplot2)
library(dplyr)
library(GGally)

# --------------------------------------------------
# Create sample patient health dataset
# --------------------------------------------------
set.seed(101)

health_data <- data.frame(
  Age = sample(20:80, 120, replace = TRUE),
  BMI = round(rnorm(120, mean = 24, sd = 3.5), 1),
  Glucose = round(rnorm(120, mean = 110, sd = 18), 1),
  Blood_Pressure = round(rnorm(120, mean = 120, sd = 12), 1)
)

# --------------------------------------------------
# Create Age Groups for color encoding
# --------------------------------------------------
health_data <- health_data %>%
  mutate(
    Age_Group = factor(
      case_when(
        Age < 30 ~ "Young (20–29)",
        Age >= 30 & Age < 50 ~ "Middle-aged (30–49)",
        Age >= 50 ~ "Senior (50+)"
      ),
      levels = c("Young (20–29)", "Middle-aged (30–49)", "Senior (50+)")
    )
  )

# --------------------------------------------------
# Scatter Plot Matrix with full visual details
# --------------------------------------------------
scatter_matrix <- ggpairs(
  health_data,
  columns = c("Age", "BMI", "Glucose", "Blood_Pressure"),
  aes(color = Age_Group, alpha = 0.75),
  title = "Scatter Plot Matrix of Patient Health Parameters",
  columnLabels = c(
    "Age (Years)",
    "Body Mass Index (kg/m²)",
    "Glucose Level (mg/dL)",
    "Blood Pressure (mmHg)"
  )
) +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 14, face = "bold", hjust = 0.5),
    legend.title = element_text(size = 10, face = "bold"),
    legend.text = element_text(size = 9)
  )

print(scatter_matrix)

# --------------------------------------------------
# Correlation Analysis
# --------------------------------------------------
correlation_matrix <- cor(
  health_data[, c("Age", "BMI", "Glucose", "Blood_Pressure")],
  use = "complete.obs"
)

print("Correlation Matrix (Pearson):")
print(round(correlation_matrix, 2))
