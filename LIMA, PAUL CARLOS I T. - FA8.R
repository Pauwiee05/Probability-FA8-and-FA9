# FA8 - PROBABILITY
# Paul Carlos T. Lima I

# No. 1

#  In Example 16.3 with 𝜆 = 4 per minute, use R to obtain:

#  (a) P(T ≤ 0.25) = P(time between submissions is at most 15 seconds);
#  (b) P(T > 0.5) = P(time between submissions is greater than 30 seconds);
#  (c) P(0.25 < T < 1) = P(time between submissions is between 15 seconds and 1 minute).


# CODES:

# Set Variables
p_submit <- 4 
time_15s <- 0.25  
time_30s <- 0.5  
time_1min <- 1 

# (a) 
Prob_15_Sec <- ppois(1, p_submit*time_15s)
cat("The Probability that time between submissions is at most 15 seconds is", Prob_15_Sec , ".\n")

# (b) 
Prob_30_Sec <- 1 - ppois(1,  p_submit*time_30s)
cat("The Probability that time between submissions is greater than 30 seconds is", Prob_30_Sec , ".\n")

# (c) 
Prob_15Sec_to_1Min <- 1 - ppois(0, p_submit*time_15s) - ppois(1, p_submit*time_1min)
cat("The Probability that time between submissions is between 15 seconds and 1 minute is", Prob_15Sec_to_1Min , ".\n")


# No. 3

#  The average rate of job submissions in a computer center is 2 per minute. If
#  it can be assumed that the number of submissions per minute has a Poisson
#  distribution, calculate the probability that:

#  (a) more than two jobs will arrive in a minute;
#  (b) at least 30 seconds will elapse between any two jobs;
#  (c) less than 30 seconds will elapse between jobs;
#  (d) a job will arrive in the next 30 seconds, if no jobs have arrived in the last 30 seconds.


# CODES:

# (a) 
1 - ppois(2, 2)

# (b) 
1 - pexp(0.5, 2)

# (c)
pexp(0.5, 2)

# (d)
pexp(0.5, 2/60)


# No. 7

#  A website receives an average of 15 visits per hour, which arrive following a Poisson distribution.

#  (a) Calculate the probability that at least 10 minutes will elapse without a visit.
#  (b) What is the probability that in any hour, there will be less than eight visits?
#  (c) Suppose that 15 minutes have elapsed since the last visit, what is the probability that a visit will occur in the next 15 minutes.
#  (d) Calculate the top quartile, and explain what it means.

# (a)
1 - pexp(10, 15/60)

# (b)
prob_less_8V <- ppois(7, 15)
prob_less_8V

# (c)
# Answer could be like this
nv <- 15/60  # The number of vists (15 Vists) per hour (60 Minutes)
prob_visit_next_15 <- 1 - ppois(0, nv*15)  
prob_visit_next_15
# Or
pexp(15, 15/60)

# (d)
visits <- 15 
t_quartile <- qpois(0.75, visits) 
t_quartile

#Explanation
cat("\n The top quartile represents the number of visits per hour such that 75% of the time the website
    receives 18 or fewer visits per hour. In other words, 75% of the time, the number of visits per 
    hour is 18 or less, while 25% of the time it is more than 18.")