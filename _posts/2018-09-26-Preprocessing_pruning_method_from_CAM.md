---
layout: post
title: ''
date: 2018-09-26 02:28:32
image: ''
description:
category: ''
tags:
twitter_text:
introduction:
---
## Some preprocessing methods from CAM package

* selGamBoost
* selGam (gam() from mgcv)  
* selLm based on linear regression  
* selLasso based on Lasso regression from package glmnet
* selLmBoost

All these methods can efficiently cut off some edges, the CAM uses them both for preprocessing & pruning.
We compare their learned graphs with the oracle skeleton and DAG separately for the preprocessing and pruning.


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

filter1 = partial(re.search, r'cam->sel')
files_list = list(filter(filter1, files_list))

for file in files_list:
    print(file)
```

    cam->sel_skeleton_gam.csv
    cam->sel_skeleton_gamboost.csv
    cam->sel_skeleton_lasso.csv
    cam->sel_skeleton_lm.csv
    cam->sel_skeleton_lmboost.csv



```python
# have a look for the dataframe
ii = 1

file_id = files_list[ii]

df = pd.read_csv(df_data_location + file_id,
                 sep=",", header='infer')
print(file_id)
```

    cam->sel_skeleton_gamboost.csv



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
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gamboost</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>128</td>
      <td>119</td>
      <td>603</td>
      <td>4100</td>
      <td>0.175103</td>
      <td>0.518219</td>
    </tr>
    <tr>
      <th>1</th>
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gamboost</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>137</td>
      <td>110</td>
      <td>554</td>
      <td>4149</td>
      <td>0.198263</td>
      <td>0.554656</td>
    </tr>
    <tr>
      <th>2</th>
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gamboost</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>149</td>
      <td>98</td>
      <td>545</td>
      <td>4158</td>
      <td>0.214697</td>
      <td>0.603239</td>
    </tr>
    <tr>
      <th>3</th>
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gamboost</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>198</td>
      <td>792</td>
      <td>523</td>
      <td>3437</td>
      <td>0.274619</td>
      <td>0.200000</td>
    </tr>
    <tr>
      <th>4</th>
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gamboost</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>217</td>
      <td>773</td>
      <td>507</td>
      <td>3453</td>
      <td>0.299724</td>
      <td>0.219192</td>
    </tr>
    <tr>
      <th>5</th>
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gamboost</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>207</td>
      <td>783</td>
      <td>531</td>
      <td>3429</td>
      <td>0.280488</td>
      <td>0.209091</td>
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
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>145</td>
      <td>102</td>
      <td>93</td>
      <td>4610</td>
      <td>0.609244</td>
      <td>0.587045</td>
    </tr>
    <tr>
      <th>1</th>
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>148</td>
      <td>99</td>
      <td>158</td>
      <td>4545</td>
      <td>0.483660</td>
      <td>0.599190</td>
    </tr>
    <tr>
      <th>2</th>
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>127</td>
      <td>120</td>
      <td>133</td>
      <td>4570</td>
      <td>0.488462</td>
      <td>0.514170</td>
    </tr>
    <tr>
      <th>3</th>
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>456</td>
      <td>534</td>
      <td>547</td>
      <td>3413</td>
      <td>0.454636</td>
      <td>0.460606</td>
    </tr>
    <tr>
      <th>4</th>
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>490</td>
      <td>500</td>
      <td>698</td>
      <td>3262</td>
      <td>0.412458</td>
      <td>0.494949</td>
    </tr>
    <tr>
      <th>5</th>
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>414</td>
      <td>576</td>
      <td>581</td>
      <td>3379</td>
      <td>0.416080</td>
      <td>0.418182</td>
    </tr>
    <tr>
      <th>6</th>
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>2365</td>
      <td>1595</td>
      <td>533</td>
      <td>457</td>
      <td>0.816080</td>
      <td>0.597222</td>
    </tr>
    <tr>
      <th>7</th>
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>1676</td>
      <td>2284</td>
      <td>378</td>
      <td>612</td>
      <td>0.815969</td>
      <td>0.423232</td>
    </tr>
    <tr>
      <th>8</th>
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>1627</td>
      <td>2333</td>
      <td>233</td>
      <td>757</td>
      <td>0.874731</td>
      <td>0.410859</td>
    </tr>
    <tr>
      <th>9</th>
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gam</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>197</td>
      <td>50</td>
      <td>155</td>
      <td>4548</td>
      <td>0.559659</td>
      <td>0.797571</td>
    </tr>
    <tr>
      <th>10</th>
      <td>cam-&gt;sel</td>
      <td>skeleton</td>
      <td>gam</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>180</td>
      <td>67</td>
      <td>200</td>
      <td>4503</td>
      <td>0.473684</td>
      <td>0.728745</td>
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
      <td>cam-&gt;sel</td>
      <td>gam</td>
      <td>Exponential</td>
      <td>0.05</td>
      <td>0.538807</td>
      <td>0.533063</td>
    </tr>
    <tr>
      <th>1</th>
      <td>cam-&gt;sel</td>
      <td>gam</td>
      <td>Exponential</td>
      <td>0.20</td>
      <td>0.424202</td>
      <td>0.451515</td>
    </tr>
    <tr>
      <th>2</th>
      <td>cam-&gt;sel</td>
      <td>gam</td>
      <td>Exponential</td>
      <td>0.80</td>
      <td>0.830650</td>
      <td>0.504798</td>
    </tr>
    <tr>
      <th>3</th>
      <td>cam-&gt;sel</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>0.527122</td>
      <td>0.566802</td>
    </tr>
    <tr>
      <th>4</th>
      <td>cam-&gt;sel</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>0.427725</td>
      <td>0.457912</td>
    </tr>
    <tr>
      <th>5</th>
      <td>cam-&gt;sel</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.80</td>
      <td>0.835593</td>
      <td>0.477104</td>
    </tr>
    <tr>
      <th>6</th>
      <td>cam-&gt;sel</td>
      <td>gam</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>0.515592</td>
      <td>0.740891</td>
    </tr>
    <tr>
      <th>7</th>
      <td>cam-&gt;sel</td>
      <td>gam</td>
      <td>MixGaussian</td>
      <td>0.20</td>
      <td>0.443122</td>
      <td>0.514141</td>
    </tr>
    <tr>
      <th>8</th>
      <td>cam-&gt;sel</td>
      <td>gam</td>
      <td>MixGaussian</td>
      <td>0.80</td>
      <td>0.811756</td>
      <td>0.648316</td>
    </tr>
    <tr>
      <th>9</th>
      <td>cam-&gt;sel</td>
      <td>gamboost</td>
      <td>Exponential</td>
      <td>0.05</td>
      <td>0.213673</td>
      <td>0.600540</td>
    </tr>
    <tr>
      <th>10</th>
      <td>cam-&gt;sel</td>
      <td>gamboost</td>
      <td>Exponential</td>
      <td>0.20</td>
      <td>0.277489</td>
      <td>0.203030</td>
    </tr>
    <tr>
      <th>11</th>
      <td>cam-&gt;sel</td>
      <td>gamboost</td>
      <td>Exponential</td>
      <td>0.80</td>
      <td>0.874728</td>
      <td>0.120370</td>
    </tr>
  </tbody>
</table>
</div>




```python
# see the effect of the conditional independence

new_df1 = new_df.groupby(['CI/Score Type']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n linear regression for preprocessing achieved the best precision/recall')
```

                   precision    recall
    CI/Score Type                     
    gam             0.594952  0.543838
    gamboost        0.450949  0.301125
    lasso           0.415926  0.340864
    lm              0.613274  0.595533
    lmboost         0.451710  0.297482
    
     linear regression for preprocessing achieved the best precision/recall



```python
# against different noise types
new_df1 = new_df.groupby(['error type']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n no comment')
```

                 precision    recall
    error type                      
    Exponential   0.508261  0.397732
    Gaussian      0.503492  0.403232
    MixGaussian   0.504334  0.446341
    
     no comment



```python
# sparsity
new_df1 = new_df.groupby(['sparsity']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n In the preprocessing step, we only concerned about the recall!')
```

              precision    recall
    sparsity                     
    0.05       0.336004  0.607917
    0.20       0.341333  0.302469
    0.80       0.838751  0.336919
    
     In the preprocessing step, we only concerned about the recall!



```python
# plot all data
g = sns.pairplot(df, 
                 height=6,
                 hue='CI/Score Type',
                  x_vars=["recall"],
                  y_vars=["precision"])

print('lm maybe acceptable')
```

    lm maybe acceptable



![png](/images/2018-09-26-Preprocessing_pruning_method_from_CAM_11_1.png)


## In the second part, we evaluate the DAG learning quality for these methods.

Note that, these methods are feeded with the true moral graph and need only considering the orientation task


```python
# read the data files
df_data_location = DATA_ROOT_DIR + '/dat_v1/processed/'

files_list = os.listdir(df_data_location)

filter1 = partial(re.search, r'cam->prune')
files_list = list(filter(filter1, files_list))

for file in files_list:
    print(file)
```

    cam->prune_dag_gam.csv
    cam->prune_dag_gamboost.csv
    cam->prune_dag_lasso.csv
    cam->prune_dag_lm.csv
    cam->prune_dag_lmboost.csv



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
      <td>cam-&gt;prune</td>
      <td>dag</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>207</td>
      <td>40</td>
      <td>430</td>
      <td>9223</td>
      <td>0.324961</td>
      <td>0.838057</td>
    </tr>
    <tr>
      <th>1</th>
      <td>cam-&gt;prune</td>
      <td>dag</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>205</td>
      <td>42</td>
      <td>549</td>
      <td>9104</td>
      <td>0.271883</td>
      <td>0.829960</td>
    </tr>
    <tr>
      <th>2</th>
      <td>cam-&gt;prune</td>
      <td>dag</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>209</td>
      <td>38</td>
      <td>440</td>
      <td>9213</td>
      <td>0.322034</td>
      <td>0.846154</td>
    </tr>
    <tr>
      <th>3</th>
      <td>cam-&gt;prune</td>
      <td>dag</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>578</td>
      <td>412</td>
      <td>1965</td>
      <td>6945</td>
      <td>0.227291</td>
      <td>0.583838</td>
    </tr>
    <tr>
      <th>4</th>
      <td>cam-&gt;prune</td>
      <td>dag</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>626</td>
      <td>364</td>
      <td>2131</td>
      <td>6779</td>
      <td>0.227058</td>
      <td>0.632323</td>
    </tr>
    <tr>
      <th>5</th>
      <td>cam-&gt;prune</td>
      <td>dag</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.20</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>525</td>
      <td>465</td>
      <td>1744</td>
      <td>7166</td>
      <td>0.231379</td>
      <td>0.530303</td>
    </tr>
    <tr>
      <th>6</th>
      <td>cam-&gt;prune</td>
      <td>dag</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>999</td>
      <td>2961</td>
      <td>2750</td>
      <td>3190</td>
      <td>0.266471</td>
      <td>0.252273</td>
    </tr>
    <tr>
      <th>7</th>
      <td>cam-&gt;prune</td>
      <td>dag</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>968</td>
      <td>2992</td>
      <td>1906</td>
      <td>4034</td>
      <td>0.336813</td>
      <td>0.244444</td>
    </tr>
    <tr>
      <th>8</th>
      <td>cam-&gt;prune</td>
      <td>dag</td>
      <td>gam</td>
      <td>Gaussian</td>
      <td>0.80</td>
      <td>100</td>
      <td>1000</td>
      <td>2</td>
      <td>1039</td>
      <td>2921</td>
      <td>1842</td>
      <td>4098</td>
      <td>0.360639</td>
      <td>0.262374</td>
    </tr>
    <tr>
      <th>9</th>
      <td>cam-&gt;prune</td>
      <td>dag</td>
      <td>gam</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>0</td>
      <td>225</td>
      <td>22</td>
      <td>617</td>
      <td>9036</td>
      <td>0.267221</td>
      <td>0.910931</td>
    </tr>
    <tr>
      <th>10</th>
      <td>cam-&gt;prune</td>
      <td>dag</td>
      <td>gam</td>
      <td>MixGaussian</td>
      <td>0.05</td>
      <td>100</td>
      <td>1000</td>
      <td>1</td>
      <td>218</td>
      <td>29</td>
      <td>620</td>
      <td>9033</td>
      <td>0.260143</td>
      <td>0.882591</td>
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
    gam             0.271064  0.565411
    gamboost        0.437300  0.357819
    lasso           0.358817  0.326024
    lm              0.300527  0.648665
    lmboost         0.440581  0.352603
    
     no comment



```python
# against different noise types
new_df1 = new_df.groupby(['error type']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n no comment')
```

                 precision    recall
    error type                      
    Exponential   0.363523  0.432656
    Gaussian      0.365553  0.457863
    MixGaussian   0.355897  0.459795
    
     no comment



```python
# sparsity
new_df1 = new_df.groupby(['sparsity']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n no comment')
```

              precision    recall
    sparsity                     
    0.05       0.342650  0.752227
    0.20       0.274844  0.388126
    0.80       0.467479  0.209961
    
     no comment



```python
# plot all data
g = sns.pairplot(df, 
                 height=6,
                 hue='CI/Score Type',
                  x_vars=["recall"],
                  y_vars=["precision"])

print('no comment')
```

    no comment



![png](/images/2018-09-26-Preprocessing_pruning_method_from_CAM_19_1.png)

