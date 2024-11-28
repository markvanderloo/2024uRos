# The assignment is to run this script, one line at the time. Study the output
# each time, and interpret the variables created, the plots, and other output.
# Discuss with your neighbour what you see. Do you understand what is happening
# in each step?


# let's read in some data
companies <- read.csv("assignments/input.csv")
head(companies)

# try the following code

# load the library
library(validate)

# define some restrictions on data
rules <- validator(
  staff >= 0
  , turnover >= 0
  , other.rev >= 0
  , turnover + other.rev == total.rev
  , if (staff > 0) staff.costs >= 0
)

# confront data with the rules
result <- confront(companies, rules, key="id")

# print the result (do you understand the printed output?)
result

# Summarize the result and study the output
summary(result)
# Discuss each column with your neighbour

# plot the result
plot(result)
# Explain what you see

# add a new rule
rules <- rules + validator(V6 = total.costs>=0)
rules

# can you explain why this yields an error?
attempt <- validator(mean(staff, na.rm=TRUE) >= 0)


rulez <- validator(.file="slides/myrulez.R")









