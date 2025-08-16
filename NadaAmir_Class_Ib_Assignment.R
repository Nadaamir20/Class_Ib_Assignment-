data <- read.csv(file.choose())
View(data)
str(data)
data$gender_fac <- as.factor(data$gender)
str(data)
data$gender_num <- ifelse(data$gender_fac == "Female" , 1, 0)
str(data)

data$diagnosis_fac <- as.factor(data$diagnosis)
str(data)
data$diagnosis_fac <- factor(data$diagnosis_fac,
                             levels = c("Normal","Cancer"))
levels(data$diagnosis_fac)
str(data)

as.integer(data$bmi)
data$bmi_int <- as.integer(data$bmi)
str(data)

data$smoker_fac <- as.factor(data$smoker)
str(data)
data$smoker_num <- ifelse(data$smoker_fac == "Yes" , 1, 0)
str(data)
