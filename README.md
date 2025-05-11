# 📊 Stack Overflow Trends: Programming Language Popularity Analysis

This repository contains the code and analysis for exploring the popularity of **programming languages** on **Stack Overflow** from **2008 to 2020**. This project focuses on understanding the trends in programming language usage using real-world data from the **Stack Exchange Data Explorer**.

---

## ✨ What I Did

### 📊 **Data Exploration and Analysis**
I performed the following analyses:
- Calculated the **percentage** of R-related questions in 2020.
- Identified the **top 5 programming languages** based on total questions asked between 2015 and 2020.

### 📈 **Data Visualization**
Created the following visualizations to understand language trends over time:
- **Line Plots** to show the rise and fall of popular languages.
- **Bar Charts** to visualize the distribution of top languages.

---

## 📈 **Key Insights**
- **R's Popularity:**  
  R accounted for a small percentage of total questions in 2020, indicating a niche but stable user base.  

- **Top 5 Languages (2015-2020):**  
  Identified the five most popular programming languages over this period, highlighting the dominance of widely-used languages.  

- **Language Trends:**  
  Visualized the changing popularity of these top languages, revealing interesting patterns in developer interest.  

---

## 🛠️ **Tools and Technologies**
- **Programming Language:**  
  R

- **Libraries Used:**  
  - `ggplot2`
  - `dplyr`
  - `readr`

- **Data Source:**  
  Stack Overflow question data from the **Stack Exchange Data Explorer**.

---

## 📄 **Files in the Repository**
- `scripts/analysis.R`: R script containing the analysis code.
- `data/stack_overflow_data.csv`: The dataset used for the analysis.
- `results/figures/`: Folder containing the output plots (e.g., line plots, bar charts).

---

## ⚙️ **Installation and Usage**

To replicate the analysis, clone this repository and install the required R packages:

```r
install.packages(c("ggplot2", "dplyr", "readr"))
