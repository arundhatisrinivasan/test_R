# import some data from a built-in dataset
data("mtcars")

# inspect the data
View(mtcars)

# some more inspection
summary(mtcars)
str(mtcars)

# try a regression
reg1 <- lm(mpg ~ wt, mtcars)

# view results
reg1
summary(reg1)
plot(reg1)

# try regression by defining a model first
m2   <- formula(mpg ~ wt + hp)
reg2 <- lm(m2, mtcars)

# find out the 'working directory'
getwd()

# save the regressions in a data file
# inside the data folder which is in the working directory
save(reg1, reg2, file = 'data/regresssions.RData')

# now save everything in the Global Environment
save.image(file = 'data/everything.RData')
