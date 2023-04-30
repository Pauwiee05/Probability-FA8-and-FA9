# FA9 - Probability
# Paul Carlos T. Lima I

# No. 1

#  An analogue signal received at a detector, measured in micro volts, is normally
#  distributed with mean of 200 and variance of 256.

#  (a) What is the probability that the signal will exceed 224 𝜇V?
#  (b) What is the probability that it will be between 186 and 224 𝜇V?
#  (c) What is the micro voltage below which 25% of the signals will be?
#  (d) What is the probability that the signal will be less than 240 𝜇V, given that it is larger than 210 𝜇V?
#  (e) Estimate the interquartile range.
#  (f) What is the probability that the signal will be less than 220 𝜇V, given that it is larger than 210 𝜇V?
#  (g) If we know that a received signal is greater that 200 𝜇V, what is the probability that is in fact greater 
#  than 220 𝜇V?

# CODES:

# Mean and Standard Deviation to use for the Program.
mean_mv <- 200
# Since variance is already given we could simply get the square root of the variance to obtain the standard deviation.
sd_mv <- sqrt(256)

# (a) 
prob_exceed_224 <- 1 - pnorm(224, mean_mv, sd_mv)
cat("The PROBABILITY that the signal will exceed 224 𝜇V is", prob_exceed_224, "\n")

# (b) 
prob_between_186_to_224 <- pnorm(224, mean_mv, sd_mv) - pnorm(186, mean_mv, sd_mv)
cat("The PROBABILITY that the signal will be between 186 and 224 𝜇V is", prob_between_186_to_224, "\n")

# (c) 
mc_below_25_percent <- qnorm(0.25, mean_mv, sd_mv)
cat("The MICRO VOLTAGE below which 25% of the signals will be is", mc_below_25_percent, "uV\n")

# (d) 
prob_less_240_larger_210 <- (pnorm(240, mean_mv, sd_mv) - pnorm(210, mean_mv, sd_mv)) / (1 - pnorm(210, mean_mv, sd_mv))
cat("The PROBABILITY that the signal will be less than 240 𝜇V, given that it is larger than 210 𝜇V is", prob_less_240_larger_210, "\n")

# (e) 
IQ_Range <- qnorm(0.75, mean_mv, sd_mv) - qnorm(0.25, mean_mv, sd_mv)
cat("The INTERQUARTILE RANGE is", IQ_Range, "uV\n")

# (f) 
prob_less_220_larger_210 <- (pnorm(220, mean_mv, sd_mv) - pnorm(210, mean_mv, sd_mv)) / (1 - pnorm(210, mean_mv, sd_mv))
cat("The PROBABILITY that the signal will be less than 220 𝜇V, given that it is larger than 210 𝜇V is", prob_less_220_larger_210, "\n")

# (g) 
prob_greater_220_if_greater_200 <- (1 - pnorm(220, mean_mv, sd_mv)) / (1 - pnorm(200, mean_mv, sd_mv))
cat("The PROBABILITY that the signal is greater than 220 𝜇V, given that it is greater than 200 𝜇V is", prob_greater_220_if_greater_200, "\n")


# No. 2

#  A manufacturer of a particular type of computer system is interested in improving its customer support services. 
#  As a first step, its marketing department has been charged with the responsibility of summarizing the extent 
#  of customer problems in terms of system failures. Over a period of six months, customers were surveyed and the 
#  amount of downtime (in minutes) due to system failures they had experienced during the previous month was 
#  collected. The average downtime was found to be 25 minutes and a variance of 144. If it can be assumed that downtime 
#  is normally distributed:

#  (a) obtain bounds which will include 95% of the downtime of all the customers;
#  (b) obtain the bound above which 10% of the downtime is included.


# CODES:

# Mean and Standard Deviation to use for the Program.
mean_dt <- 25 #minutes
# Since variance is already given we could simply get the square root of the variance to obtain the standard deviation.
sd_dt <- sqrt(144) #minutes


# (a)

# Calculates the lower and upper bounds for 95% of the downtime.
# values are 0.025 and 0.975 to approximately get the bounds which will include 95% of the downtime.
l_bounded <- qnorm(0.025,  mean_dt, sd_dt)
u_bounded <- qnorm(0.975, mean_dt, sd_dt)

# Prints the results for the required LOWER and UPPER bounds.
cat("The LOWER BOUND is", round(l_bounded, 2), "minutes and the UPPER BOUND is", round(u_bounded, 2), "minutes.")


# (b)

# Calculates the bound above which 10% of the downtime is included.
Bound_above_10 <- qnorm(0.9, mean_dt, sd_dt)

# Print the result for the bound above which 10% of the downtime is included of what was required.
cat("The BOUND above which 10% of the downtime is included is", round(Bound_above_10, 2), "minutes.")
