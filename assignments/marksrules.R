# Mark's rules

# field length for id
field_length(id,min=7,max=7)
# no duplicates
all_unique(id)
# check for each id if it is unique (so you can find them)
is_unique(id)

# range checks
staff >= 0
turnover >= 0
other.rev >= 0
staff.costs >= 0
total.costs >= staff.costs

# balance checks
profit == total.rev - total.costs
other.rev + turnover == total.rev

# some plausibility checks
profit <= 0.6*total.rev

# I expect that the sector as a whole is
# profitable
mean(profit, na.rm=TRUE) > 1


# zipcode must have 4 figures and two capitals
grepl("^[0-9]{4}[A-Z]{2}$",zipcode)





