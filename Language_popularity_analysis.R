# Load necessary packages
library(readr)
library(dplyr)
library(ggplot2)

# Load the dataset
data <- read_csv("stack_overflow_data.csv")

# View the dataset
head(data)

# Adding a percentage column into the dataset
data <- data %>%
  mutate(percentage = (num_questions / year_total) * 100)

# --- Question 1 ---
# Filter for R questions in 2020 and keep only required columns
r_2020 <- data %>%
  filter(tag == "r", year == 2020) %>%
  select(year, tag, num_questions, year_total, percentage)

print(r_2020)

# Visualization of the Percentage of R questions over time
ggplot(data %>% filter(tag == "r"), aes(x = year, y = percentage)) +
  geom_line(color = "#3366cc", size = 1.2) +
  geom_point(color = "#3366cc", size = 2) +
  labs(title = "Trend of R Questions Over Time",
       x = "Year",
       y = "Percentage of Total Questions") +
  theme_minimal()

# --- Question 2 ---
# Get total number of questions per tag between 2015 and 2020
tag_totals <- data %>%
  filter(year >= 2015 & year <= 2020) %>%
  group_by(tag) %>%
  summarize(total_questions = sum(num_questions), .groups = 'drop') %>%
  arrange(desc(total_questions))

# Extract top 5 tags
highest_tags <- tag_totals %>%
  slice_head(n = 5) %>%
  select(tag)

print(highest_tags)

# Visualize trends of top 5 tags
top_tags <- highest_tags$tag

top_tag_data <- data %>%
  filter(tag %in% top_tags, year >= 2015)  # restrict to 2015–2020 for cleaner plot

ggplot(top_tag_data, aes(x = year, y = percentage, color = tag)) +
  geom_line(size = 1.1) +
  geom_point(size = 2) +
  labs(title = "Trends of Top 5 Programming Language Tags (2015–2020)",
       x = "Year",
       y = "Percentage of Total Questions",
       color = "Tag") +
  theme_minimal()
