---
layout: post
title: ''
date: 2018-09-26 02:26:47
image: '/blog/images/wallpaper-your-best-day-a.jpg'
description:
category: ''
tags:
twitter_text:
introduction:
---
## CPDAG Learning

In general, if only the conditional independence tests are used, the constrained-based algorithms
can return the CPDAG at their best.


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

filter1 = partial(re.search, r'([a-z0-9]+)(_cpdag_)')
files_list = list(filter(filter1, files_list))

for file in files_list:
    print(file)
```

    fast-iamb_cpdag_cor.csv
    fast-iamb_cpdag_mi-sh.csv
    fast-iamb_cpdag_mi.csv
    fast-iamb_cpdag_zf.csv
    ges_cpdag_bic.csv
    gs_cpdag_cor.csv
    gs_cpdag_mi.csv
    gs_cpdag_zf.csv
    iamb_cpdag_cor.csv
    iamb_cpdag_mi-sh.csv
    iamb_cpdag_mi.csv
    iamb_cpdag_zf.csv
    inter-iamb_cpdag_cor.csv
    inter-iamb_cpdag_mi-sh.csv
    inter-iamb_cpdag_mi.csv
    inter-iamb_cpdag_zf.csv



```python
# concatinate all dataframes
df = pd.DataFrame()

for file_id in files_list:
    df4concatinate = pd.read_csv(df_data_location + file_id,
                 sep=",", header='infer')
    df = pd.concat([df, df4concatinate])

df.tail(13)
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
      <th>5</th>
      <td>inter-iamb</td>
      <td>cpdag</td>
      <td>zf</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>31</td>
      <td>976</td>
      <td>88</td>
      <td>8805</td>
      <td>0.260504</td>
      <td>0.030785</td>
    </tr>
    <tr>
      <th>6</th>
      <td>inter-iamb</td>
      <td>cpdag</td>
      <td>zf</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>89</td>
      <td>196</td>
      <td>45</td>
      <td>9570</td>
      <td>0.664179</td>
      <td>0.312281</td>
    </tr>
    <tr>
      <th>7</th>
      <td>inter-iamb</td>
      <td>cpdag</td>
      <td>zf</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>101</td>
      <td>183</td>
      <td>51</td>
      <td>9565</td>
      <td>0.664474</td>
      <td>0.355634</td>
    </tr>
    <tr>
      <th>8</th>
      <td>inter-iamb</td>
      <td>cpdag</td>
      <td>zf</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>83</td>
      <td>194</td>
      <td>62</td>
      <td>9561</td>
      <td>0.572414</td>
      <td>0.299639</td>
    </tr>
    <tr>
      <th>9</th>
      <td>inter-iamb</td>
      <td>cpdag</td>
      <td>zf</td>
      <td>MixGaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>27</td>
      <td>989</td>
      <td>31</td>
      <td>8853</td>
      <td>0.465517</td>
      <td>0.026575</td>
    </tr>
    <tr>
      <th>10</th>
      <td>inter-iamb</td>
      <td>cpdag</td>
      <td>zf</td>
      <td>MixGaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>33</td>
      <td>975</td>
      <td>56</td>
      <td>8836</td>
      <td>0.370787</td>
      <td>0.032738</td>
    </tr>
    <tr>
      <th>11</th>
      <td>inter-iamb</td>
      <td>cpdag</td>
      <td>zf</td>
      <td>MixGaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>32</td>
      <td>976</td>
      <td>46</td>
      <td>8846</td>
      <td>0.410256</td>
      <td>0.031746</td>
    </tr>
    <tr>
      <th>12</th>
      <td>inter-iamb</td>
      <td>cpdag</td>
      <td>zf</td>
      <td>Exponential</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>81</td>
      <td>212</td>
      <td>61</td>
      <td>9546</td>
      <td>0.570423</td>
      <td>0.276451</td>
    </tr>
    <tr>
      <th>13</th>
      <td>inter-iamb</td>
      <td>cpdag</td>
      <td>zf</td>
      <td>Exponential</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>77</td>
      <td>217</td>
      <td>54</td>
      <td>9552</td>
      <td>0.587786</td>
      <td>0.261905</td>
    </tr>
    <tr>
      <th>14</th>
      <td>inter-iamb</td>
      <td>cpdag</td>
      <td>zf</td>
      <td>Exponential</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>86</td>
      <td>190</td>
      <td>66</td>
      <td>9558</td>
      <td>0.565789</td>
      <td>0.311594</td>
    </tr>
    <tr>
      <th>15</th>
      <td>inter-iamb</td>
      <td>cpdag</td>
      <td>zf</td>
      <td>Exponential</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>32</td>
      <td>991</td>
      <td>74</td>
      <td>8803</td>
      <td>0.301887</td>
      <td>0.031281</td>
    </tr>
    <tr>
      <th>16</th>
      <td>inter-iamb</td>
      <td>cpdag</td>
      <td>zf</td>
      <td>Exponential</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>34</td>
      <td>977</td>
      <td>74</td>
      <td>8815</td>
      <td>0.314815</td>
      <td>0.033630</td>
    </tr>
    <tr>
      <th>17</th>
      <td>inter-iamb</td>
      <td>cpdag</td>
      <td>zf</td>
      <td>Exponential</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>50</td>
      <td>965</td>
      <td>86</td>
      <td>8799</td>
      <td>0.367647</td>
      <td>0.049261</td>
    </tr>
  </tbody>
</table>
</div>




```python
# pruning the dataframe
new_df = df.groupby(['Method', 'CI/Score Type', 'error type', 'sparsity']).mean()

new_df.reset_index(inplace=True)
new_df = new_df.dropna().reset_index(drop=True)

new_df.drop(['n_nodes', 'n_samples', 'repid', 'TP', 'TN', 'FP', 'FN'], axis=1, inplace=True)
```


```python
# see the effect of the conditional independence

new_df1 = new_df.groupby(['CI/Score Type']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n no comment')
```

                   precision    recall
    CI/Score Type                     
    bic             0.319675  0.394080
    cor             0.560543  0.139413
    mi              0.535360  0.148239
    mi-sh           0.318890  0.140113
    zf              0.550127  0.143297
    
     no comment



```python
# against different noise types
new_df1 = new_df.groupby(['error type']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n no comment')
```

                 precision    recall
    error type                      
    Exponential   0.475601  0.163053
    Gaussian      0.490331  0.162686
    MixGaussian   0.494258  0.163889
    
     no comment



```python
# sparsity
new_df1 = new_df.groupby(['sparsity']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n no comment')
```

              precision    recall
    sparsity                     
    0.05       0.557996  0.313455
    0.20       0.365407  0.047523
    0.80       0.647896  0.052598
    
     no comment



```python
# plot all data
g = sns.pairplot(df, 
                 height=6,
                 hue='CI/Score Type',
                  x_vars=["recall"],
                  y_vars=["precision"])

print('Algorithms have very different behaviour, suggesting that they can possibly combined to perform better')
```

    Algorithms have very different behaviour, suggesting that they can possibly combined to perform better



![png](/blog/images/2018-09-26-CPDAG_Learning_8_1.png)

