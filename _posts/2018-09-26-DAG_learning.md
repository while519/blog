---
layout: post
title: ''
date: 2018-09-26 02:27:04
image: 'https://img00.deviantart.net/c610/i/2010/314/2/6/wallpaper_collection_17_bing_by_thefirstfirefox-d32kob6.jpg'
description:
category: ''
tags:
twitter_text:
introduction:
---
## DAG learning

From the observational data, some algorithms aim at recovering their associated directed acyclic graph


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

filter1 = partial(re.search, r'^(?!cam)([a-z0-9]+)(_dag)')
files_list = list(filter(filter1, files_list))

for file in files_list:
    print(file)
```

    ges_dag_bic.csv
    hc_dag_aic.csv
    hc_dag_bge.csv
    hc_dag_bic.csv
    hc_dag_loglik.csv
    lingam_dag_directLiNGAM.csv
    lingam_dag_fast-ica.csv
    tabu_dag_aic.csv
    tabu_dag_bge.csv
    tabu_dag_bic.csv
    tabu_dag_loglik.csv



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
      <th>14</th>
      <td>tabu</td>
      <td>dag</td>
      <td>loglik</td>
      <td>MixGaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>639</td>
      <td>351</td>
      <td>3981</td>
      <td>4929</td>
      <td>0.138312</td>
      <td>0.645455</td>
    </tr>
    <tr>
      <th>15</th>
      <td>tabu</td>
      <td>dag</td>
      <td>loglik</td>
      <td>MixGaussian</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>955</td>
      <td>3005</td>
      <td>1665</td>
      <td>4275</td>
      <td>0.364504</td>
      <td>0.241162</td>
    </tr>
    <tr>
      <th>16</th>
      <td>tabu</td>
      <td>dag</td>
      <td>loglik</td>
      <td>MixGaussian</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>1023</td>
      <td>2937</td>
      <td>1625</td>
      <td>4315</td>
      <td>0.386329</td>
      <td>0.258333</td>
    </tr>
    <tr>
      <th>17</th>
      <td>tabu</td>
      <td>dag</td>
      <td>loglik</td>
      <td>MixGaussian</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>620</td>
      <td>3340</td>
      <td>1945</td>
      <td>3995</td>
      <td>0.241715</td>
      <td>0.156566</td>
    </tr>
    <tr>
      <th>18</th>
      <td>tabu</td>
      <td>dag</td>
      <td>loglik</td>
      <td>Exponential</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>73</td>
      <td>174</td>
      <td>4016</td>
      <td>5637</td>
      <td>0.017853</td>
      <td>0.295547</td>
    </tr>
    <tr>
      <th>19</th>
      <td>tabu</td>
      <td>dag</td>
      <td>loglik</td>
      <td>Exponential</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>87</td>
      <td>160</td>
      <td>3970</td>
      <td>5683</td>
      <td>0.021444</td>
      <td>0.352227</td>
    </tr>
    <tr>
      <th>20</th>
      <td>tabu</td>
      <td>dag</td>
      <td>loglik</td>
      <td>Exponential</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>69</td>
      <td>178</td>
      <td>4038</td>
      <td>5615</td>
      <td>0.016801</td>
      <td>0.279352</td>
    </tr>
    <tr>
      <th>21</th>
      <td>tabu</td>
      <td>dag</td>
      <td>loglik</td>
      <td>Exponential</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>440</td>
      <td>550</td>
      <td>4111</td>
      <td>4799</td>
      <td>0.096682</td>
      <td>0.444444</td>
    </tr>
    <tr>
      <th>22</th>
      <td>tabu</td>
      <td>dag</td>
      <td>loglik</td>
      <td>Exponential</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>557</td>
      <td>433</td>
      <td>4063</td>
      <td>4847</td>
      <td>0.120563</td>
      <td>0.562626</td>
    </tr>
    <tr>
      <th>23</th>
      <td>tabu</td>
      <td>dag</td>
      <td>loglik</td>
      <td>Exponential</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>416</td>
      <td>574</td>
      <td>4115</td>
      <td>4795</td>
      <td>0.091812</td>
      <td>0.420202</td>
    </tr>
    <tr>
      <th>24</th>
      <td>tabu</td>
      <td>dag</td>
      <td>loglik</td>
      <td>Exponential</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>620</td>
      <td>3340</td>
      <td>1556</td>
      <td>4384</td>
      <td>0.284926</td>
      <td>0.156566</td>
    </tr>
    <tr>
      <th>25</th>
      <td>tabu</td>
      <td>dag</td>
      <td>loglik</td>
      <td>Exponential</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>871</td>
      <td>3089</td>
      <td>1976</td>
      <td>3964</td>
      <td>0.305936</td>
      <td>0.219949</td>
    </tr>
    <tr>
      <th>26</th>
      <td>tabu</td>
      <td>dag</td>
      <td>loglik</td>
      <td>Exponential</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>601</td>
      <td>3359</td>
      <td>997</td>
      <td>4943</td>
      <td>0.376095</td>
      <td>0.151768</td>
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
    aic             0.166291  0.278785
    bge             0.318236  0.116793
    bic             0.218371  0.287392
    directLiNGAM    0.044287  0.438182
    fast-ica        0.031163  0.226303
    loglik          0.146584  0.329833
    
     no comment



```python
# against different noise types
new_df1 = new_df.groupby(['error type']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n no comment')
```

                 precision    recall
    error type                      
    Exponential   0.184331  0.260251
    Gaussian      0.178936  0.253932
    MixGaussian   0.193052  0.282154
    
     no comment



```python
# sparsity
new_df1 = new_df.groupby(['sparsity']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n no comment')
```

              precision    recall
    sparsity                     
    0.05       0.079543  0.333947
    0.20       0.133411  0.317233
    0.80       0.359157  0.133129
    
     no comment



```python
# plot all data
g = sns.pairplot(df, 
                 height=6,
                 hue='CI/Score Type',
                  x_vars=["recall"],
                  y_vars=["precision"])
```


![png](/blog/images/2018-09-26-DAG_learning_8_0.png)

