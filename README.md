Multivariate Health Data Visualization (R)

Name: SHIMAL AYMAN
Roll No: 23BAD112

🎯 Objective

To discover relationships among multiple health variables using multivariate visualization techniques and correlation analysis.

🏥 Scenario

A hospital analytics team analyzes patient health records to identify relationships between age, BMI, glucose levels, and blood pressure for early disease prediction.

🛠 Tools & Environment

R Programming Language

RStudio

Libraries Used:

ggplot2

dplyr

Base R functions (no external visualization packages required)

📂 Dataset Description

The dataset is synthetically generated to simulate real patient health records.

Variables Used:
Variable	Description	Unit
Age	Age of patient	Years
BMI	Body Mass Index	kg/m²
Glucose	Blood glucose level	mg/dL
Blood_Pressure	Blood pressure	mmHg
Age_Group	Categorized age groups	—
🔄 Data Preprocessing

Random patient health data is generated.

Patients are categorized into age groups:

Young (20–29)

Middle-aged (30–49)

Senior (50+)

Age groups are used for color encoding in visualizations.

📊 Visualizations Performed
1️⃣ Scatter Plot Matrix

Displays pairwise relationships between all health variables.

Color-coded by Age Group for better comparison.

Helps visually identify trends, clusters, and correlations.

Axis Information:

Age → Years

BMI → kg/m²

Glucose → mg/dL

Blood Pressure → mmHg

2️⃣ Legend

Clearly indicates age groups with distinct colors.

Helps differentiate patient categories visually.

3️⃣ Correlation Matrix

Pearson correlation coefficients are calculated.

Identifies strength and direction of relationships between variables.

▶️ How to Execute the Code

Open RStudio.

Copy the provided R script into the Script window.

Run the code line by line or click Run.

View:

Scatter plot matrix in the Plots panel

Correlation matrix in the Console

📝 Conclusion

The scatter plot matrix and correlation analysis effectively reveal relationships among patient health parameters. Color encoding based on age groups enhances interpretability, enabling early identification of patterns useful for predictive healthcare analytics.
