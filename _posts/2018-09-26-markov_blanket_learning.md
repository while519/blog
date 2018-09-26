---
layout: post
title: ''
date: 2018-09-26 02:29:02
image: '/blog/images/wallpaper-your-best-day-a.jpg'
description:
category: ''
tags:
twitter_text:
introduction:
---
## Markov blanket learning

This page evaluate three algorithms for learning the markov blanket.


```python
import os
from definitions import DATA_ROOT_DIR
from functools import partial
import re
import pandas as pd
import seaborn as sns

sns.set(style="ticks")
```


```python
# read the data files
df_data_location = DATA_ROOT_DIR + '/dat_v1/processed/'

files_list = os.listdir(df_data_location)

filter1 = partial(re.search, r'_moral_')
files_list = list(filter(filter1, files_list))

for file in files_list:
    print(file)
```

    fast-iamb_moral_cor.csv
    fast-iamb_moral_mi-sh.csv
    fast-iamb_moral_mi.csv
    fast-iamb_moral_zf.csv
    gs_moral_cor.csv
    gs_moral_mi.csv
    gs_moral_zf.csv
    iamb_moral_cor.csv
    iamb_moral_mi-sh.csv
    iamb_moral_mi.csv
    iamb_moral_zf.csv
    inter-iamb_moral_cor.csv
    inter-iamb_moral_mi-sh.csv
    inter-iamb_moral_mi.csv
    inter-iamb_moral_zf.csv



```python
# have a look for the dataframe
ii = 1

file_id = files_list[ii]

df = pd.read_csv(df_data_location + file_id,
                 sep=",", header='infer')
print(file_id)
```

    fast-iamb_moral_mi-sh.csv



```python
df.head(6)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Method</th>
      <th>Graph Type</th>
      <th>CI/Score Type</th>
      <th>error type</th>
      <th>sparsity</th>
      <th>n_nodes</th>
      <th>n_samples</th>
      <th>repid</th>
      <th>TP</th>
      <th>TN</th>
      <th>FP</th>
      <th>FN</th>
      <th>precision</th>
      <th>recall</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>mi-sh</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>108</td>
      <td>344</td>
      <td>160</td>
      <td>4338</td>
      <td>0.402985</td>
      <td>0.238938</td>
    </tr>
    <tr>
      <th>1</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>mi-sh</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>108</td>
      <td>379</td>
      <td>74</td>
      <td>4389</td>
      <td>0.593407</td>
      <td>0.221766</td>
    </tr>
    <tr>
      <th>2</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>mi-sh</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>96</td>
      <td>393</td>
      <td>50</td>
      <td>4411</td>
      <td>0.657534</td>
      <td>0.196319</td>
    </tr>
    <tr>
      <th>3</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>mi-sh</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>155</td>
      <td>2478</td>
      <td>125</td>
      <td>2192</td>
      <td>0.553571</td>
      <td>0.058868</td>
    </tr>
    <tr>
      <th>4</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>mi-sh</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>146</td>
      <td>2508</td>
      <td>95</td>
      <td>2201</td>
      <td>0.605809</td>
      <td>0.055011</td>
    </tr>
    <tr>
      <th>5</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>mi-sh</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>94</td>
      <td>374</td>
      <td>61</td>
      <td>4421</td>
      <td>0.606452</td>
      <td>0.200855</td>
    </tr>
  </tbody>
</table>
</div>




```python
# concatinate all dataframes
df = pd.DataFrame()

for file_id in files_list:
    df4concatinate = pd.read_csv(df_data_location + file_id,
                 sep=",", header='infer')
    df = pd.concat([df, df4concatinate])

df.head(11)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Method</th>
      <th>Graph Type</th>
      <th>CI/Score Type</th>
      <th>error type</th>
      <th>sparsity</th>
      <th>n_nodes</th>
      <th>n_samples</th>
      <th>repid</th>
      <th>TP</th>
      <th>TN</th>
      <th>FP</th>
      <th>FN</th>
      <th>precision</th>
      <th>recall</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>cor</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>129</td>
      <td>323</td>
      <td>14</td>
      <td>4484</td>
      <td>0.902098</td>
      <td>0.285398</td>
    </tr>
    <tr>
      <th>1</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>cor</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>127</td>
      <td>360</td>
      <td>19</td>
      <td>4444</td>
      <td>0.869863</td>
      <td>0.260780</td>
    </tr>
    <tr>
      <th>2</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>cor</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>144</td>
      <td>345</td>
      <td>33</td>
      <td>4428</td>
      <td>0.813559</td>
      <td>0.294479</td>
    </tr>
    <tr>
      <th>3</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>cor</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>16</td>
      <td>2617</td>
      <td>2</td>
      <td>2315</td>
      <td>0.888889</td>
      <td>0.006077</td>
    </tr>
    <tr>
      <th>4</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>cor</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>7</td>
      <td>2647</td>
      <td>0</td>
      <td>2296</td>
      <td>1.000000</td>
      <td>0.002638</td>
    </tr>
    <tr>
      <th>5</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>cor</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>10</td>
      <td>2539</td>
      <td>0</td>
      <td>2401</td>
      <td>1.000000</td>
      <td>0.003923</td>
    </tr>
    <tr>
      <th>6</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>cor</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>139</td>
      <td>329</td>
      <td>8</td>
      <td>4474</td>
      <td>0.945578</td>
      <td>0.297009</td>
    </tr>
    <tr>
      <th>7</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>cor</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>93</td>
      <td>380</td>
      <td>2</td>
      <td>4475</td>
      <td>0.978947</td>
      <td>0.196617</td>
    </tr>
    <tr>
      <th>8</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>cor</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>100</td>
      <td>360</td>
      <td>4</td>
      <td>4486</td>
      <td>0.961538</td>
      <td>0.217391</td>
    </tr>
    <tr>
      <th>9</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>cor</td>
      <td>MixGaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>0</td>
      <td>2636</td>
      <td>0</td>
      <td>2314</td>
      <td>NaN</td>
      <td>0.000000</td>
    </tr>
    <tr>
      <th>10</th>
      <td>fast-iamb</td>
      <td>moral</td>
      <td>cor</td>
      <td>MixGaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>5</td>
      <td>2700</td>
      <td>0</td>
      <td>2245</td>
      <td>1.000000</td>
      <td>0.001848</td>
    </tr>
  </tbody>
</table>
</div>



### For learning the markov blanket, it is more important to get it right than accuracy


```python
new_df = df.groupby(['Method', 'CI/Score Type', 'error type', 'sparsity']).mean()

new_df.reset_index(inplace=True)
new_df = new_df.dropna().reset_index(drop=True)

new_df.drop(['n_nodes', 'n_samples', 'repid', 'TP', 'TN', 'FP', 'FN'], axis=1, inplace=True)
```


```python
new_df.head(12)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Method</th>
      <th>CI/Score Type</th>
      <th>error type</th>
      <th>sparsity</th>
      <th>precision</th>
      <th>recall</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>fast-iamb</td>
      <td>cor</td>
      <td>Exponential</td>
      <td>0.05</td>
      <td>0.838717</td>
      <td>0.226730</td>
    </tr>
    <tr>
      <th>1</th>
      <td>fast-iamb</td>
      <td>cor</td>
      <td>Exponential</td>
      <td>0.20</td>
      <td>0.892593</td>
      <td>0.004729</td>
    </tr>
    <tr>
      <th>2</th>
      <td>fast-iamb</td>
      <td>cor</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>0.861840</td>
      <td>0.280219</td>
    </tr>
    <tr>
      <th>3</th>
      <td>fast-iamb</td>
      <td>cor</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>0.962963</td>
      <td>0.004212</td>
    </tr>
    <tr>
      <th>4</th>
      <td>fast-iamb</td>
      <td>cor</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>0.962021</td>
      <td>0.237006</td>
    </tr>
    <tr>
      <th>5</th>
      <td>fast-iamb</td>
      <td>cor</td>
      <td>MixGaussian</td>
      <td>0.20</td>
      <td>0.875000</td>
      <td>0.000993</td>
    </tr>
    <tr>
      <th>6</th>
      <td>fast-iamb</td>
      <td>mi</td>
      <td>Exponential</td>
      <td>0.05</td>
      <td>0.823362</td>
      <td>0.218873</td>
    </tr>
    <tr>
      <th>7</th>
      <td>fast-iamb</td>
      <td>mi</td>
      <td>Exponential</td>
      <td>0.20</td>
      <td>0.958333</td>
      <td>0.004086</td>
    </tr>
    <tr>
      <th>8</th>
      <td>fast-iamb</td>
      <td>mi</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>0.869268</td>
      <td>0.267306</td>
    </tr>
    <tr>
      <th>9</th>
      <td>fast-iamb</td>
      <td>mi</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>0.921053</td>
      <td>0.004357</td>
    </tr>
    <tr>
      <th>10</th>
      <td>fast-iamb</td>
      <td>mi</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>0.934480</td>
      <td>0.229079</td>
    </tr>
    <tr>
      <th>11</th>
      <td>fast-iamb</td>
      <td>mi</td>
      <td>MixGaussian</td>
      <td>0.20</td>
      <td>0.750000</td>
      <td>0.000865</td>
    </tr>
  </tbody>
</table>
</div>




```python
# see the effect of the conditional independence

new_df1 = new_df.groupby(['CI/Score Type']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n mi-sh is worst as for the ci test option')
```

                   precision    recall
    CI/Score Type                     
    cor             0.866040  0.121152
    mi              0.854466  0.129149
    mi-sh           0.600087  0.156796
    zf              0.851838  0.126075
    
     mi-sh is worst as for the ci test option



```python
# different noise types
new_df1 = new_df.groupby(['error type']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n no comment')
```

                 precision    recall
    error type                      
    Exponential   0.784959  0.135434
    Gaussian      0.791607  0.134372
    MixGaussian   0.836964  0.125721
    
     no comment



```python
# sparsity
new_df1 = new_df.groupby(['sparsity']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n a large portion of true edges have not been retrieved')
```

              precision    recall
    sparsity                     
    0.05       0.750542  0.259123
    0.20       0.807737  0.031980
    0.80       0.995345  0.028936
    
     a large portion of true edges have not been retrieved



```python
# method
new_df1 = new_df.groupby(['Method']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n gs has the best performance, but only a little bit better')
```

                precision    recall
    Method                         
    fast-iamb    0.803172  0.127526
    gs           0.878917  0.138342
    iamb         0.827631  0.115980
    inter-iamb   0.720118  0.153471
    
     gs has the best performance, but only a little bit better



```python
# plot all data
g = sns.pairplot(df, 
                 height=6,
                 hue='Method',
                  x_vars=["recall"],
                  y_vars=["precision"])

print('High precision but low recall, maybe tune the parameter can help')
```

    High precision but low recall, maybe tune the parameter can help



![png](/blog/images/2018-09-26-markov_blanket_learning_13_1.png)

