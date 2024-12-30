import numpy as np
import scipy.stats as st
import statsmodels.stats.api as stm

users = np.array([1,0,0,0,1,1,1,0,1])

n = users.size

p = users.sum()/n

se = np.sqrt(p*(1-p)/n)

st.norm.interval(0.95, loc=p, scale=se)

ages = np.array([23, 24, 38,34,3,36,37,39])

stm.DescrStatsW(ages).tconfint_mean()




