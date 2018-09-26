---
layout: post
title: ''
date: 2018-09-26 02:28:49
image: ''
description:
category: ''
tags:
twitter_text:
introduction:
---
## Evaluation for the skeleton learning

In a skeleton graph, the neighbors of one node consist of its parents and children


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

filter1 = partial(re.search, r'_skeleton')
files_list = list(filter(filter1, files_list))

for file in files_list:
    print(file)
```

    aracne_skeleton_mi-g.csv
    cam->sel_skeleton_gam.csv
    cam->sel_skeleton_gamboost.csv
    cam->sel_skeleton_lasso.csv
    cam->sel_skeleton_lm.csv
    cam->sel_skeleton_lmboost.csv
    chow.liu_skeleton_mi-g.csv
    hiton-pc_skeleton_cor.csv
    hiton-pc_skeleton_mi-sh.csv
    hiton-pc_skeleton_mi.csv
    hiton-pc_skeleton_zf.csv
    mmpc_skeleton_cor.csv
    mmpc_skeleton_mi-sh.csv
    mmpc_skeleton_mi.csv
    mmpc_skeleton_zf.csv
    pc_skeleton.csv
    proposed1_skeleton_corr.csv



```python
# concatinate all dataframes
df = pd.DataFrame()

for file_id in files_list:
    df4concatinate = pd.read_csv(df_data_location + file_id,
                 sep=",", header='infer')
    df = pd.concat([df, df4concatinate])

df.head(11)
```

    /home/yuwu/Desktop/env1/lib/python3.6/site-packages/ipykernel_launcher.py:7: FutureWarning: Sorting because non-concatenation axis is not aligned. A future version
    of pandas will change to not sort by default.
    
    To accept the future behavior, pass 'sort=False'.
    
    To retain the current behavior and silence the warning, pass 'sort=True'.
    
      import sys





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
      <th>CI/Score Type</th>
      <th>FN</th>
      <th>FP</th>
      <th>Graph Type</th>
      <th>Method</th>
      <th>TN</th>
      <th>TP</th>
      <th>error type</th>
      <th>n_nodes</th>
      <th>n_samples</th>
      <th>precision</th>
      <th>recall</th>
      <th>repid</th>
      <th>sparsity</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>mi-g</td>
      <td>4644</td>
      <td>59</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>195</td>
      <td>52</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.468468</td>
      <td>0.210526</td>
      <td>0</td>
      <td>0.05</td>
    </tr>
    <tr>
      <th>1</th>
      <td>mi-g</td>
      <td>4648</td>
      <td>55</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>187</td>
      <td>60</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.521739</td>
      <td>0.242915</td>
      <td>1</td>
      <td>0.05</td>
    </tr>
    <tr>
      <th>2</th>
      <td>mi-g</td>
      <td>4657</td>
      <td>46</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>180</td>
      <td>67</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.592920</td>
      <td>0.271255</td>
      <td>2</td>
      <td>0.05</td>
    </tr>
    <tr>
      <th>3</th>
      <td>mi-g</td>
      <td>3884</td>
      <td>76</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>954</td>
      <td>36</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.321429</td>
      <td>0.036364</td>
      <td>0</td>
      <td>0.20</td>
    </tr>
    <tr>
      <th>4</th>
      <td>mi-g</td>
      <td>3881</td>
      <td>79</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>956</td>
      <td>34</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.300885</td>
      <td>0.034343</td>
      <td>1</td>
      <td>0.20</td>
    </tr>
    <tr>
      <th>5</th>
      <td>mi-g</td>
      <td>3878</td>
      <td>82</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>960</td>
      <td>30</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.267857</td>
      <td>0.030303</td>
      <td>2</td>
      <td>0.20</td>
    </tr>
    <tr>
      <th>6</th>
      <td>mi-g</td>
      <td>972</td>
      <td>18</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>3877</td>
      <td>83</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.821782</td>
      <td>0.020960</td>
      <td>0</td>
      <td>0.80</td>
    </tr>
    <tr>
      <th>7</th>
      <td>mi-g</td>
      <td>965</td>
      <td>25</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>3885</td>
      <td>75</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.750000</td>
      <td>0.018939</td>
      <td>1</td>
      <td>0.80</td>
    </tr>
    <tr>
      <th>8</th>
      <td>mi-g</td>
      <td>979</td>
      <td>11</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>3870</td>
      <td>90</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.891089</td>
      <td>0.022727</td>
      <td>2</td>
      <td>0.80</td>
    </tr>
    <tr>
      <th>9</th>
      <td>mi-g</td>
      <td>4643</td>
      <td>60</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>193</td>
      <td>54</td>
      <td>MixGaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.473684</td>
      <td>0.218623</td>
      <td>0</td>
      <td>0.05</td>
    </tr>
    <tr>
      <th>10</th>
      <td>mi-g</td>
      <td>4639</td>
      <td>64</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>205</td>
      <td>42</td>
      <td>MixGaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.396226</td>
      <td>0.170040</td>
      <td>1</td>
      <td>0.05</td>
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
new_df.head
```




    <bound method NDFrame.head of         Method CI/Score Type   error type  sparsity  precision    recall
    0       aracne          mi-g  Exponential      0.05   0.562302  0.257760
    1       aracne          mi-g  Exponential      0.20   0.280361  0.029966
    2       aracne          mi-g  Exponential      0.80   0.874515  0.022306
    3       aracne          mi-g     Gaussian      0.05   0.527709  0.241565
    4       aracne          mi-g     Gaussian      0.20   0.296724  0.033670
    5       aracne          mi-g     Gaussian      0.80   0.820957  0.020875
    6       aracne          mi-g  MixGaussian      0.05   0.452050  0.201080
    7       aracne          mi-g  MixGaussian      0.20   0.328534  0.037037
    8       aracne          mi-g  MixGaussian      0.80   0.827327  0.020960
    9     cam->sel           gam  Exponential      0.05   0.538807  0.533063
    10    cam->sel           gam  Exponential      0.20   0.424202  0.451515
    11    cam->sel           gam  Exponential      0.80   0.830650  0.504798
    12    cam->sel           gam     Gaussian      0.05   0.527122  0.566802
    13    cam->sel           gam     Gaussian      0.20   0.427725  0.457912
    14    cam->sel           gam     Gaussian      0.80   0.835593  0.477104
    15    cam->sel           gam  MixGaussian      0.05   0.515592  0.740891
    16    cam->sel           gam  MixGaussian      0.20   0.443122  0.514141
    17    cam->sel           gam  MixGaussian      0.80   0.811756  0.648316
    18    cam->sel      gamboost  Exponential      0.05   0.213673  0.600540
    19    cam->sel      gamboost  Exponential      0.20   0.277489  0.203030
    20    cam->sel      gamboost  Exponential      0.80   0.874728  0.120370
    21    cam->sel      gamboost     Gaussian      0.05   0.196021  0.558704
    22    cam->sel      gamboost     Gaussian      0.20   0.284943  0.209428
    23    cam->sel      gamboost     Gaussian      0.80   0.853459  0.118350
    24    cam->sel      gamboost  MixGaussian      0.05   0.198883  0.561404
    25    cam->sel      gamboost  MixGaussian      0.20   0.287411  0.211785
    26    cam->sel      gamboost  MixGaussian      0.80   0.871937  0.126515
    27    cam->sel         lasso  Exponential      0.05   0.155220  0.685560
    28    cam->sel         lasso  Exponential      0.20   0.252238  0.234007
    29    cam->sel         lasso  Exponential      0.80   0.830801  0.123653
    ..         ...           ...          ...       ...        ...       ...
    107       mmpc           cor  MixGaussian      0.80   0.854167  0.004040
    108       mmpc            mi  Exponential      0.05   0.848515  0.245614
    109       mmpc            mi  Exponential      0.20   0.638588  0.017508
    110       mmpc            mi  Exponential      0.80   0.908750  0.004672
    111       mmpc            mi     Gaussian      0.05   0.816012  0.233468
    112       mmpc            mi     Gaussian      0.20   0.476753  0.016498
    113       mmpc            mi     Gaussian      0.80   0.916839  0.005556
    114       mmpc            mi  MixGaussian      0.05   0.843201  0.232119
    115       mmpc            mi  MixGaussian      0.20   0.565359  0.015825
    116       mmpc            mi  MixGaussian      0.80   0.850658  0.003956
    117       mmpc         mi-sh  Exponential      0.05   0.587719  0.271255
    118       mmpc         mi-sh     Gaussian      0.05   0.608887  0.275304
    119       mmpc            zf  Exponential      0.05   0.845186  0.248313
    120       mmpc            zf  Exponential      0.20   0.629143  0.018519
    121       mmpc            zf  Exponential      0.80   0.913919  0.003914
    122       mmpc            zf     Gaussian      0.05   0.811042  0.230769
    123       mmpc            zf     Gaussian      0.20   0.508075  0.017172
    124       mmpc            zf     Gaussian      0.80   0.916667  0.005387
    125       mmpc            zf  MixGaussian      0.05   0.830143  0.228070
    126       mmpc            zf  MixGaussian      0.20   0.567453  0.015488
    127       mmpc            zf  MixGaussian      0.80   0.904625  0.004293
    128  proposed1          corr  Exponential      0.05   0.297939  0.630229
    129  proposed1          corr  Exponential      0.20   0.401405  0.520202
    130  proposed1          corr  Exponential      0.80   0.798256  0.939310
    131  proposed1          corr     Gaussian      0.05   0.341395  0.682861
    132  proposed1          corr     Gaussian      0.20   0.397936  0.526599
    133  proposed1          corr     Gaussian      0.80   0.796521  0.933165
    134  proposed1          corr  MixGaussian      0.05   0.352154  0.843455
    135  proposed1          corr  MixGaussian      0.20   0.387752  0.646801
    136  proposed1          corr  MixGaussian      0.80   0.794604  0.911953
    
    [137 rows x 6 columns]>




```python
# see the effect of the conditional independence

new_df1 = new_df.groupby(['CI/Score Type']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n corr method from the proposed algorithm has the best precision recall')
```

                   precision    recall
    CI/Score Type                     
    cor             0.777706  0.079789
    corr            0.507551  0.737175
    gam             0.594952  0.543838
    gamboost        0.450949  0.301125
    lasso           0.415926  0.340864
    lm              0.613274  0.595533
    lmboost         0.451710  0.297482
    mi              0.774361  0.079801
    mi-g            0.557470  0.093349
    mi-sh           0.573807  0.139067
    zf              0.787724  0.079951
    
     corr method from the proposed algorithm has the best precision recall



```python
# against different noise types
new_df1 = new_df.groupby(['error type']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n no comment')
```

                 precision    recall
    error type                      
    Exponential   0.642214  0.234204
    Gaussian      0.606992  0.234826
    MixGaussian   0.629075  0.250900
    
     no comment



```python
# sparsity
new_df1 = new_df.groupby(['sparsity']).mean()

print(new_df1.loc[:, ['precision', 'recall']])
print('\n no comment')
```

              precision    recall
    sparsity                     
    0.05       0.573482  0.380854
    0.20       0.442602  0.151743
    0.80       0.864468  0.180830
    
     no comment



```python
# plot all data
g = sns.pairplot(df, 
                 height=6,
                 hue='CI/Score Type',
                  x_vars=["recall"],
                  y_vars=["precision"])

print('too many points and colors, hard to distinguish anything')
```

    lm maybe acceptable



![png](/images/2018-09-26-Skeleton_Learning_9_1.png)



```python
# plot all data
df = df[df['Method'] != 'cam->sel']

df['Method Long Name'] = df["Method"] + df["CI/Score Type"]

g = sns.pairplot(df, 
                 height=6,
                 hue='Method Long Name',
                  x_vars=["recall"],
                  y_vars=["precision"])

```


![png](/images/2018-09-26-Skeleton_Learning_10_0.png)

