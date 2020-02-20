## model HIGH INCOME
library(caret)

#breaking dataset into training and validation sets
# using 80% of dataset as training data
validation_index <- createDataPartition(HI_gs1,p=0.8,list=FALSE)

# grocery stores
validation_gs1 <- HI_gs1[-validation_index]
training_gs1 <- HI_gs1[validation_index]

# convenience stores
validation_ls1 <- HI_ls1[-validation_index]
training_ls1 <- HI_ls1[validation_index]

# data frame to graph model and training data
high_income_first <- data.frame(training_gs1,training_ls1)

model_high <- lm(training_gs1 ~ training_ls1)
interc_HI1 <- coef(model_high) 

# Plotting the training data and model
ggplot(high_income_first, aes(x=training_ls1, y=training_gs1)) + 
  geom_point(size=2, alpha=0.6) +
  geom_abline(intercept = interc_HI1[1], slope = interc_HI1[2])

# matching names from the validation set to the training set
validation_cs = data.frame(training_ls1 = validation_ls1)
high_prediction <- predict(high_income_model, newdata = validation_cs)

RMSE(validation_gs1,high_prediction)
summary(model_high)

