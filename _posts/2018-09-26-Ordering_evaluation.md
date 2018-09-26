---
layout: post
title: ''
date: 2018-09-26 02:27:22
image: ''
description:
category: ''
tags:
twitter_text:
introduction:
---
## Learning the node ordering

Three algorithms are designed for learning the node ordering, namely Direct-LinGAM, ICA-Lingam and the proposed one step conditional independence test.

We evaluate the ordering learning performance by their associated graph structrure difference


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

filter1 = partial(re.search, r'_ordering_')
files_list = list(filter(filter1, files_list))

for file in files_list:
    print(file)
```

    lingam_ordering_directLiNGAM.csv
    lingam_ordering_fast-ica.csv
    proposed1_ordering_hsic.csv



```python
# have a look for the dataframe
ii = 1

file_id = files_list[ii]

df = pd.read_csv(df_data_location + file_id,
                 sep=",", header='infer')
print(file_id)
```

    lingam_ordering_fast-ica.csv



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
      <td>lingam</td>
      <td>ordering</td>
      <td>fast-ica</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>122</td>
      <td>125</td>
      <td>4828</td>
      <td>4825</td>
      <td>0.024646</td>
      <td>0.493927</td>
    </tr>
    <tr>
      <th>1</th>
      <td>lingam</td>
      <td>ordering</td>
      <td>fast-ica</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>131</td>
      <td>116</td>
      <td>4819</td>
      <td>4834</td>
      <td>0.026465</td>
      <td>0.530364</td>
    </tr>
    <tr>
      <th>2</th>
      <td>lingam</td>
      <td>ordering</td>
      <td>fast-ica</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>115</td>
      <td>132</td>
      <td>4835</td>
      <td>4818</td>
      <td>0.023232</td>
      <td>0.465587</td>
    </tr>
    <tr>
      <th>3</th>
      <td>lingam</td>
      <td>ordering</td>
      <td>fast-ica</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>809</td>
      <td>181</td>
      <td>4141</td>
      <td>4769</td>
      <td>0.163434</td>
      <td>0.817172</td>
    </tr>
    <tr>
      <th>4</th>
      <td>lingam</td>
      <td>ordering</td>
      <td>fast-ica</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>794</td>
      <td>196</td>
      <td>4156</td>
      <td>4754</td>
      <td>0.160404</td>
      <td>0.802020</td>
    </tr>
    <tr>
      <th>5</th>
      <td>lingam</td>
      <td>ordering</td>
      <td>fast-ica</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>801</td>
      <td>189</td>
      <td>4149</td>
      <td>4761</td>
      <td>0.161818</td>
      <td>0.809091</td>
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
      <td>lingam</td>
      <td>ordering</td>
      <td>directLiNGAM</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>119</td>
      <td>128</td>
      <td>4831</td>
      <td>4822</td>
      <td>0.024040</td>
      <td>0.481781</td>
    </tr>
    <tr>
      <th>1</th>
      <td>lingam</td>
      <td>ordering</td>
      <td>directLiNGAM</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>129</td>
      <td>118</td>
      <td>4821</td>
      <td>4832</td>
      <td>0.026061</td>
      <td>0.522267</td>
    </tr>
    <tr>
      <th>2</th>
      <td>lingam</td>
      <td>ordering</td>
      <td>directLiNGAM</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>136</td>
      <td>111</td>
      <td>4814</td>
      <td>4839</td>
      <td>0.027475</td>
      <td>0.550607</td>
    </tr>
    <tr>
      <th>3</th>
      <td>lingam</td>
      <td>ordering</td>
      <td>directLiNGAM</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>259</td>
      <td>731</td>
      <td>4691</td>
      <td>4219</td>
      <td>0.052323</td>
      <td>0.261616</td>
    </tr>
    <tr>
      <th>4</th>
      <td>lingam</td>
      <td>ordering</td>
      <td>directLiNGAM</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>290</td>
      <td>700</td>
      <td>4660</td>
      <td>4250</td>
      <td>0.058586</td>
      <td>0.292929</td>
    </tr>
    <tr>
      <th>5</th>
      <td>lingam</td>
      <td>ordering</td>
      <td>directLiNGAM</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>295</td>
      <td>695</td>
      <td>4655</td>
      <td>4255</td>
      <td>0.059596</td>
      <td>0.297980</td>
    </tr>
    <tr>
      <th>6</th>
      <td>lingam</td>
      <td>ordering</td>
      <td>directLiNGAM</td>
      <td>Gaussian</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>2090</td>
      <td>1870</td>
      <td>2860</td>
      <td>3080</td>
      <td>0.422222</td>
      <td>0.527778</td>
    </tr>
    <tr>
      <th>7</th>
      <td>lingam</td>
      <td>ordering</td>
      <td>directLiNGAM</td>
      <td>Gaussian</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>2109</td>
      <td>1851</td>
      <td>2841</td>
      <td>3099</td>
      <td>0.426061</td>
      <td>0.532576</td>
    </tr>
    <tr>
      <th>8</th>
      <td>lingam</td>
      <td>ordering</td>
      <td>directLiNGAM</td>
      <td>Gaussian</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>2098</td>
      <td>1862</td>
      <td>2852</td>
      <td>3088</td>
      <td>0.423838</td>
      <td>0.529798</td>
    </tr>
    <tr>
      <th>9</th>
      <td>lingam</td>
      <td>ordering</td>
      <td>directLiNGAM</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>126</td>
      <td>121</td>
      <td>4824</td>
      <td>4829</td>
      <td>0.025455</td>
      <td>0.510121</td>
    </tr>
    <tr>
      <th>10</th>
      <td>lingam</td>
      <td>ordering</td>
      <td>directLiNGAM</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>122</td>
      <td>125</td>
      <td>4828</td>
      <td>4825</td>
      <td>0.024646</td>
      <td>0.493927</td>
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
      <td>lingam</td>
      <td>directLiNGAM</td>
      <td>Exponential</td>
      <td>0.05</td>
      <td>0.034141</td>
      <td>0.684211</td>
    </tr>
    <tr>
      <th>1</th>
      <td>lingam</td>
      <td>directLiNGAM</td>
      <td>Exponential</td>
      <td>0.20</td>
      <td>0.063569</td>
      <td>0.317845</td>
    </tr>
    <tr>
      <th>2</th>
      <td>lingam</td>
      <td>directLiNGAM</td>
      <td>Exponential</td>
      <td>0.80</td>
      <td>0.455286</td>
      <td>0.569108</td>
    </tr>
    <tr>
      <th>3</th>
      <td>lingam</td>
      <td>directLiNGAM</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>0.025859</td>
      <td>0.518219</td>
    </tr>
    <tr>
      <th>4</th>
      <td>lingam</td>
      <td>directLiNGAM</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>0.056835</td>
      <td>0.284175</td>
    </tr>
    <tr>
      <th>5</th>
      <td>lingam</td>
      <td>directLiNGAM</td>
      <td>Gaussian</td>
      <td>0.80</td>
      <td>0.424040</td>
      <td>0.530051</td>
    </tr>
    <tr>
      <th>6</th>
      <td>lingam</td>
      <td>directLiNGAM</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>0.026465</td>
      <td>0.530364</td>
    </tr>
    <tr>
      <th>7</th>
      <td>lingam</td>
      <td>directLiNGAM</td>
      <td>MixGaussian</td>
      <td>0.20</td>
      <td>0.058855</td>
      <td>0.294276</td>
    </tr>
    <tr>
      <th>8</th>
      <td>lingam</td>
      <td>directLiNGAM</td>
      <td>MixGaussian</td>
      <td>0.80</td>
      <td>0.427811</td>
      <td>0.534764</td>
    </tr>
    <tr>
      <th>9</th>
      <td>lingam</td>
      <td>fast-ica</td>
      <td>Exponential</td>
      <td>0.05</td>
      <td>0.027677</td>
      <td>0.554656</td>
    </tr>
    <tr>
      <th>10</th>
      <td>lingam</td>
      <td>fast-ica</td>
      <td>Exponential</td>
      <td>0.20</td>
      <td>0.167138</td>
      <td>0.835690</td>
    </tr>
    <tr>
      <th>11</th>
      <td>lingam</td>
      <td>fast-ica</td>
      <td>Exponential</td>
      <td>0.80</td>
      <td>0.762828</td>
      <td>0.953535</td>
    </tr>
  </tbody>
</table>
</div>




```python
# see the effect of the conditional independence

new_df1 = new_df.groupby(['CI/Score Type']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n fast-ica achieved the best precision/recall')
```

                   precision    recall
    CI/Score Type                     
    directLiNGAM    0.174762  0.473668
    fast-ica        0.318803  0.773697
    hsic            0.173056  0.493037
    
     fast-ica achieved the best precision/recall



```python
# against different noise types
new_df1 = new_df.groupby(['error type']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n no comment')
```

                 precision    recall
    error type                      
    Exponential   0.221317  0.588562
    Gaussian      0.222596  0.568059
    MixGaussian   0.222709  0.583782
    
     no comment



```python
# sparsity
new_df1 = new_df.groupby(['sparsity']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n Low precision is an expected behaviour, we only concerned about the recall!')
```

              precision    recall
    sparsity                     
    0.05       0.026996  0.541011
    0.20       0.106629  0.533146
    0.80       0.532997  0.666246
    
     Low precision is an expected behaviour, we only concerned about the recall!



```python
# plot all data
g = sns.pairplot(df, 
                 height=6,
                 hue='CI/Score Type',
                  x_vars=["recall"],
                  y_vars=["precision"])

print('fast-ica based lingam perform the best!')
```

    fast-ica based lingam perform the best!



![png](/blog/images/2018-09-26-Ordering_evaluation_11_1.png)

