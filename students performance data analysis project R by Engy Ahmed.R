install.packages(c("readxl", "dplyr", "ggplot2", "tidyr", "caret"))
df <- read.csv("StudentPerformanceFactors.csv")
str(df)
summary(df)
install.packages("ggplot2")
library(ggplot2)
ggplot(df, aes(x = Hours_Studied, y = Exam_Score, color = Gender)) +
  geom_point() +
  labs(title = "Relationship between Hours Studied and Exam Score",
       x = "Hours Studied",
       y = "Exam Score") +
  scale_color_manual(values = c("orange", "darkgreen"))
ggplot(df, aes(x = Exam_Score)) +
  geom_histogram(binwidth = 2, fill = "orange", color = "white") +
  labs(title = "Distribution of Exam Scores")
ggplot(df, aes(x = Gender, y = Exam_Score)) +
  geom_boxplot(fill = "orange") +
  labs(title = "Exam Scores by Gender") +
  scale_x_discrete(labels = c("Female", "Male"))
ggplot(df, aes(x = Parental_Involvement)) +
  geom_bar(fill = "orange") +
  labs(title = "Parental Involvement Levels")
library(corrplot)
corr_matrix <- cor(df[, c("Hours_Studied", "Attendance", "Exam_Score")])
corrplot(corr_matrix, method = "color", col = hcl.colors(100, palette = "YlGnBu"))
ggplot(df, aes(x = Attendance, y = Exam_Score, color = Gender)) +
  geom_point() +
  labs(title = "Relationship between Attendance and Exam Score",
       x = "Attendance",
       y = "Exam Score") +
  scale_color_manual(values = c("orange", "darkgreen"))
library(GGally)
ggpairs(df[, c("Attendance", "Exam_Score", "Hours_Studied")])
ggplot(df, aes(x = Attendance, y = Exam_Score)) +
  geom_point(color = "orange") +
  labs(title = "Relationship between Attendance and Exam Score",
       x = "Attendance",
       y = "Exam Score")
ggplot(df, aes(x = Parental_Involvement, y = Exam_Score)) +
  geom_boxplot(fill = "orange") +
  labs(title = "Exam Scores by Parental Involvement",
       x = "Parental Involvement",
       y = "Exam Score")
