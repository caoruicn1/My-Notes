# Data analysis in Python with pandas


Youtube: https://www.youtube.com/channel/UCnVzApLJE2ljPZSeQylSEyg
Bilibili: http://www.bilibili.com/video/av6785636/

### 2. Read a tabular data file
```python
# Directly read either a local file or url file
# sep: set, default t(tab-stop)
# header: prevent the first row to be the header
# names: set columns names
orders = pd.read_table('http://', sep='|',
                        header=None,          # set False to drop index_col
                        names = []            # if header=0, set index_col
                        usecols = [0,4]       # fill names or slices
                        nrows = n             # load only n rows
                        dtypes={'xxx':float}) # change data type

# obj.head(): see the first five row
orders.head()
```

### 3. Select a pandas Series from a DataFrame
- `pd.read_table`: the most common one
- `pd.read_csv`: set `sep=','` as default

```python
type(ufo)    # confirm type

ufo['City']  # equivalent to below, return the column Series.
             # The way to create new columns.
ufo.City     # Series names Automatically become its attributes,
             # Won't work if space exists and names equal to default attributes

ufo.City + ',' + ufo.State  # add values together
```

### 4. Why do some pandas commands end with parenthese
- `obj.describe()`: show you the Statistics of numeric columns
- `obj.shape`
- `obj.dtypes` : show the types of all columns
- `obj.describe(include=['object'])`:
- **Tips!**: select a word and press `shift+tab` to show references

### 5. Rename columns in a pandas DataFrame
- `obj.columns`: show columns namespace
```python
obj.rename(columns ={'Original':Changed}, inplace=True)   # 1
ufo_cols =[]
obj.columns = ufo_cols                                    # 2
ufo = pd.read_csv('http://', names=ufo_cols, header=0)    # 3
```

- **Bonus**: `ufo.columns = ufo.columns.str.replace(' ', '_')`, substitude space

### 6. Remove columns
```python
# axis=0 means Row by default
# axis=1 means Column
# inplace = 1 means override the original file
obj.drop(str, axis=1, inplace=True)
```

### 7. Sort a pandas DataFrame
```python
# sort and return Series
obj['title'].sort_values()  # or
obj.title.sort_values()

# sort and return DataFrame
obj.sort_values('duration', ascending=False)  
obj.sort_values('content_rating', 'duration') # sort by two columns
```

### 8. Filter rows of a pandas DataFrame
```python
# inside return boolean Series
movies[movies.duration >=200]['genre']
movies.loc[movies.duration >=200 , 'genre']  # obj.loc[condition, 'column']
```

### 9. apply multiple filter criteria to a pandas DataFrame
```python
movies[(movies.duration >= 200)] | (movies.genre == 'Drama')]
# Equivalent expression
movies[(movies.genre=='Crime') | (movies.genre=='Drama') | (movies.genre=='Action')]
movies[movies.genre.isin(['Crime', 'Drama', 'Action'])]
```

### 10. Questions answered
- Selecting individual entries and iteration
  ```python
  for c in ufo.City:
      print(c)

  for index, row in ufo.iterrows():
      print(index, row.City, row.State)

  ```

- Best way to drop every non-numeric  
  ```pyhton
  obj.select_dtpyes(include=[np.number])  # obj is a DataFrame
  ```

### 11. How to use the axis
- axis is the direction of the movement of the operations
- `axis = 0` equals to `axis = 'index'`
- `axis = 1` equals to `axis = 'columns'`
-

### 12. Use string methods in pandas
```python
import pandas as pd

"Hello".upper()  # doesn't work in DataFrame
orders.choice_description.str.replace('['.'')  # add .str.method
orders.c.str.replace().str.upper()             # addable
```

### 13. Change the data type
```python
drinks.beer.astype(float)
obj.read_table('url', dtypes={'xx':float})
# str.contains return boolean
# convert boolean into 0 and 1
orders.item_name.str.contains('Chicken').astype(int).head
```

### 14 Use a "groupby" in pandas
```python
drinks.groupby('continent').beer_servings.mean()
drinks.groupby('continent').beer_servings.max()
drinks.groupby('continent').beer_servings.min()
drinks.groupby('continent').beer_servings.agg(['count','min','max','mean'])
drinks.groupby('continent').mean()

# Tips!
drinks.groupby('continent').mean().plot(kind='bar')
```

### 15. Explore a pandas Series
```python
movies.duration.describe()
movies.genre.value_counts(dropna=False) # include NaN
movies.genre.value_counts(normalize=True) # show percentage
movies.genre.unique()
movies.genre.nunique()  # show unique number

pd.crosstab(movies.genre, movies.content_rating)  # cross analysis
# plot
%matplotlib inline
obj.plot(kind='hist')
obj.plot(kind='bar')
```

### 16. Handle missing values
- `obj.dropna(axis=0, how='any', thresh=None, subset=None, inplace=False)`

  ```python
  ufo.isnull.sum()  # return the number of True
  ufo.dropna()  # drop null value, Return True value
  ufo.dropna(subset=['City', 'Shape Reported'], how='all')

  ufo['Shape Reported'].fillna(value='Various') # replace NaN to Various
  ```

### 17&18. About Pandas Index
```python
drinks.set_index('country', inplace=True) # set index
drinks.loc['Brazil', 'beer_servings']  # be able to select value directly
drinks.index.name = None  # remove the name

# Recover the 'Country' column
drinks.index.name = 'country'      # important!
drinks.reset_index(inplace=True)

# describe() also a DataFrame
drinks.describe().loc['25%', 'bear_servings']  # select value
```

```python
drinks.contient.value_counts().sort_values()
drinks.contient.value_counts().sort_index()

pd.concat([drinks, people], axis=1)  # add a new columns
```

- `Series * Series` will apply to the same index, thus equivalent scale is unnacessary.

### 19. Select multiple rows and columns
```python
# obj.loc[row, columns]
ufo.loc[0:2, 'City':'States']  
ufo.loc[[0,1,2], :]

# obj.loc[condition, columns]
ufo.loc[ufo.City=='Oakland', 'State']

df.loc[:3, :]     # select by index
df.iloc[:3,:]     # select by slicing

df.ix[]  # not recommended
```

### 20. When to use the "inplace" parameter

### 21. Make DataFrame smaller and faster
```python
# check memory_usage
drinks.info(memory_usage='deep')         # deep will show more explicitly
drinks.continent.memory_usage(deep=True)

# make DataFrame slim, just for few different values
drinks.continent = drinks..continent.astype('category')
drinks.continent.cat.codes  # check the code of category

# Advance Tips! set order for categories
df['quality']= df.quality.astype('category',
                                 categories=['good',
                                             'very good',
                                             'excellent'],
                                             ordered=True)
# good < very good < excellent
df.loc[df.quality > 'good', :]  # be able to compare string
```

### 22. use pandas with scikit-learn to create Kaggle submissions?

### 23. Questions answered
```python
# randomly sample rows
ufo.sample(n=3, random_state=42)  # random_state for reuse
ufo.sample(frac=0.75, random_state=42)  # 75%

~True # ~means False 按位取反运算符
```

### Methods to combine data
```python
pd.concat(df1,df2)
df1.append(df2)
pd.merge(df1,df2, on='')   # intersection
df1.join(df2)              # based on df1 index
```
