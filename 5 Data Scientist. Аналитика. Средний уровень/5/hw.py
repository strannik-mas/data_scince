import numpy as np
import scipy.stats as st
import pandas as pd

p = 0.5
p2 = 0.67
z = 1.96
error = 0.03

n = round(z**2*p*(1-p)/(error**2))
n2 = round(z**2*p2*(1-p2)/(error**2))

#hw after module
df = pd.read_csv('./data/experiment.csv')
n = df['test'].size
p = df['test'].sum()/n
pc = df['control'].sum()/n
se = np.sqrt(p*(1-p)/n)
sec = np.sqrt(pc*(1-pc)/n)
interval1 = st.norm.interval(0.9, loc=p, scale=se)
interval2 = st.norm.interval(0.9, loc=pc, scale=sec)
