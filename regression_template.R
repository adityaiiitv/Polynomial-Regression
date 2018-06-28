# Polynomial Regression

# Importing the dataset
dataset = read.csv('Position_Salaries.csv')
dataset = dataset[2:3]

# install.packages('caTools')
# library(caTools)
# set.seed(123)
# split = sample.split(dataset$DependentVariable, SplitRatio = 0.8)
# training_set = subset(dataset, split == TRUE)
# test_set = subset(dataset, split == FALSE)

# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)

# Fittin polynomial regression
# Create our regressor

# Predict a new result with regression
y_pred = predict(regressor , data.frame(Level=6.5))

# Visualize regression results
library(ggplot2)
ggplot() +
  geom_point(aes(x=dataset$Level,y=dataset$Salary),
             color = 'red') + 
  geom_line(aes(x=dataset$Level,y=predict(regressor, newdata = dataset)),
            color = 'blue') +
  ggtitle('Truth or bluff(Regression Model)') +
  xlab('Level')+
  ylab('Salary')

# Smooth curve and higher resolution
library(ggplot2)
x_grid = seq(min(dataset$Level), max(dataset$Level),0.1)
ggplot() +
  geom_point(aes(x=dataset$Level,y=dataset$Salary),
             color = 'red') + 
  geom_line(aes(x=x_grid,y=predict(regressor, newdata = data.frame(Level = x_grid))),
            color = 'blue') +
  ggtitle('Truth or bluff(Regression Model)') +
  xlab('Level')+
  ylab('Salary')
