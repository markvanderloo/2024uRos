# read the data
dat <- read.csv("assignments/input.csv")

# read the rules
rules <- validator(.file="assignments/marksrules.R")
rules

# confront data with the rules
out <- confront(dat, rules,key="id")

# summarize and analyze the outcomes
summary(out)

plot(out)

d <- as.data.frame(out)
View(d)


dat1 <- dat
dat1[is.na(dat1)] <- 0

out1 <- confront(dat1, rules)
plot(out1)


comp <- compare(rules, dat,dat1)






