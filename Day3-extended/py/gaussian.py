import math

#
# Prereq: include math.h
# Function that calculates the probability according to a gaussian distribution
# Param:
#   mu: the mean of the sample
#   sigma2: the variance of the sample
#   x: the event variable
#
# Returns:
#   prob: the probability of the variable x happening
#
def f (mu, sigma2, x):
    prob = (math.exp(-(pow((x-mu),2))/(2*sigma2)))/(math.sqrt(2*math.pi*sigma2))
    return prob

if __name__ == '__main__':
    print (f(10.0,4.0,8.0))
