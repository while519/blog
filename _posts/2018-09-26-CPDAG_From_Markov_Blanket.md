---
layout: post
title: ''
date: 2018-09-26 02:26:23
image: 'https://img00.deviantart.net/c610/i/2010/314/2/6/wallpaper_collection_17_bing_by_thefirstfirefox-d32kob6.jpg'
description:
category: ''
tags:
twitter_text:
introduction:
---
## Some experiements for learning the CPDAG from the oracle markov blanket


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

filter1 = partial(re.search, r'([a-z0-9]+)(_cpdagFromMB_)')
files_list = list(filter(filter1, files_list))

for file in files_list:
    print(file)
    
print('These are actually obtained from the second step of pc, for using different CI tests')
```

    gs_cpdagFromMB_cor.csv
    gs_cpdagFromMB_mi.csv
    gs_cpdagFromMB_zf.csv
    These are actually obtained from the second step of pc, for using different CI tests



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
      <th>13</th>
      <td>gs</td>
      <td>cpdagFromMB</td>
      <td>zf</td>
      <td>MixGaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>4</td>
      <td>1004</td>
      <td>4</td>
      <td>8888</td>
      <td>0.500000</td>
      <td>0.003968</td>
    </tr>
    <tr>
      <th>14</th>
      <td>gs</td>
      <td>cpdagFromMB</td>
      <td>zf</td>
      <td>MixGaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>5</td>
      <td>1003</td>
      <td>5</td>
      <td>8887</td>
      <td>0.500000</td>
      <td>0.004960</td>
    </tr>
    <tr>
      <th>15</th>
      <td>gs</td>
      <td>cpdagFromMB</td>
      <td>zf</td>
      <td>MixGaussian</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>0</td>
      <td>4037</td>
      <td>0</td>
      <td>5863</td>
      <td>NaN</td>
      <td>0.000000</td>
    </tr>
    <tr>
      <th>16</th>
      <td>gs</td>
      <td>cpdagFromMB</td>
      <td>zf</td>
      <td>MixGaussian</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>0</td>
      <td>4027</td>
      <td>0</td>
      <td>5873</td>
      <td>NaN</td>
      <td>0.000000</td>
    </tr>
    <tr>
      <th>17</th>
      <td>gs</td>
      <td>cpdagFromMB</td>
      <td>zf</td>
      <td>MixGaussian</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>0</td>
      <td>4053</td>
      <td>0</td>
      <td>5847</td>
      <td>NaN</td>
      <td>0.000000</td>
    </tr>
    <tr>
      <th>18</th>
      <td>gs</td>
      <td>cpdagFromMB</td>
      <td>zf</td>
      <td>Exponential</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>79</td>
      <td>214</td>
      <td>35</td>
      <td>9572</td>
      <td>0.692982</td>
      <td>0.269625</td>
    </tr>
    <tr>
      <th>19</th>
      <td>gs</td>
      <td>cpdagFromMB</td>
      <td>zf</td>
      <td>Exponential</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>85</td>
      <td>209</td>
      <td>28</td>
      <td>9578</td>
      <td>0.752212</td>
      <td>0.289116</td>
    </tr>
    <tr>
      <th>20</th>
      <td>gs</td>
      <td>cpdagFromMB</td>
      <td>zf</td>
      <td>Exponential</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>83</td>
      <td>193</td>
      <td>33</td>
      <td>9591</td>
      <td>0.715517</td>
      <td>0.300725</td>
    </tr>
    <tr>
      <th>21</th>
      <td>gs</td>
      <td>cpdagFromMB</td>
      <td>zf</td>
      <td>Exponential</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>1</td>
      <td>1022</td>
      <td>1</td>
      <td>8876</td>
      <td>0.500000</td>
      <td>0.000978</td>
    </tr>
    <tr>
      <th>22</th>
      <td>gs</td>
      <td>cpdagFromMB</td>
      <td>zf</td>
      <td>Exponential</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>6</td>
      <td>1005</td>
      <td>6</td>
      <td>8883</td>
      <td>0.500000</td>
      <td>0.005935</td>
    </tr>
    <tr>
      <th>23</th>
      <td>gs</td>
      <td>cpdagFromMB</td>
      <td>zf</td>
      <td>Exponential</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>0</td>
      <td>4015</td>
      <td>0</td>
      <td>5885</td>
      <td>NaN</td>
      <td>0.000000</td>
    </tr>
    <tr>
      <th>24</th>
      <td>gs</td>
      <td>cpdagFromMB</td>
      <td>zf</td>
      <td>Exponential</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>0</td>
      <td>4013</td>
      <td>0</td>
      <td>5887</td>
      <td>NaN</td>
      <td>0.000000</td>
    </tr>
    <tr>
      <th>25</th>
      <td>gs</td>
      <td>cpdagFromMB</td>
      <td>zf</td>
      <td>Exponential</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>0</td>
      <td>4053</td>
      <td>0</td>
      <td>5847</td>
      <td>NaN</td>
      <td>0.000000</td>
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
    cor             0.610774  0.159274
    mi              0.632929  0.190304
    zf              0.610774  0.159274
    
     no comment



```python
# against different noise types
new_df1 = new_df.groupby(['error type']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n no comment')
```

                 precision    recall
    error type                      
    Exponential   0.632142  0.173275
    Gaussian      0.606311  0.173092
    MixGaussian   0.615892  0.159646
    
     no comment



```python
# sparsity
new_df1 = new_df.groupby(['sparsity']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n no comment')
```

              precision    recall
    sparsity                     
    0.05       0.721548  0.314863
    0.20       0.500000  0.003631
    
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



![png](/blog/images/2018-09-26-CPDAG_From_Markov_Blanket_8_1.png)

