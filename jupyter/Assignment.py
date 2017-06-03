
# coding: utf-8

# In[1]:

import pandas as pd


# In[ ]:

#creating data frames that store the csv files


# In[2]:

d1 = pd.read_csv('TXDemo2015.csv')


# In[3]:

d2 = pd.read_csv('TXDemo2016.csv')


# In[5]:

d3 = pd.read_csv('DistrictDisparities2015.csv')


# In[6]:

d4 = pd.read_csv('DistrictDisparities2016.csv')


# In[57]:

#The number of Black or african american people is stored as su 


# In[59]:

su = sum(d1['BLACK OR AFRICAN AMERICAN'])


# In[60]:

su


# In[10]:

d1


# In[11]:

sum(d1['BLACK OR AFRICAN AMERICAN'])


# In[61]:

#seperating out the black or african american people category into the dataframe- 'dafr' 


# In[62]:

dafr = d4.loc[d4['HEADING NAME'] == 'BLACK OR AFRICAN AMERICAN']


# In[67]:

# storing the number of punishments by Black or african american people in 'b' and the total Black or african american people in 'a'


# In[63]:

a = sum(d2['BLACK OR AFRICAN AMERICAN'])


# In[64]:

b = sum(dafr['Group Punishments'])


# In[65]:

perc = (b/a)*100


# In[70]:

#perc has the number of Black or african american people who were punished in Texas for the year 2016 


# In[71]:

perc


# In[68]:

#change d3 and d4 to eliminate unrequired heading names like special education and so on


# In[35]:

dx = d3.loc[(d3['HEADING NAME'] != 'Economic Disadvantage') & (d3['HEADING NAME'] != 'Special Education') & (d3['HEADING NAME'] != 'TWO OR MORE RACES')]


# In[72]:

dxx = d4.loc[(d4['HEADING NAME'] != 'Economic Disadvantage') & (d4['HEADING NAME'] != 'Special Education') & (d4['HEADING NAME'] != 'TWO OR MORE RACES')]


# In[73]:

#the data frame 'aa' holds the total people who were punished in both the years


# In[49]:

aa = dx['Group Punishments'].sum() + dxx['Group Punishments'].sum()


# In[74]:

#the data frame 'aa' holds the total people  in both the years


# In[50]:

bb = d1['DPETALLC'].sum() + d2['DPETALLC'].sum()


# In[75]:

# The percentage of folks got punished as compared to the overall population over both the years is stored in 'totalperc'


# In[76]:

totalperc = (aa/bb)*100


# In[77]:

totalperc


# In[55]:

perc


# In[79]:

# I also made an observation that for some of the districts the column 'DPETALLC' does not hold the exact sum of 'ASIAN'


# In[80]:

#'AMERICAN INDIAN OR ALASKA NAT','HISPANIC/LATINO' AND 'WHITE' 


# In[ ]:




# In[78]:

d1

