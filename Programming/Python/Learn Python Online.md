# Learn Python Online

## Python for Finance

- **Get Data**
```python
# Use pandas_datareader to get data
import datetime as dt
import pandas as pd
from pandas import Series, DataFrame
import numpy as np
import quandl
import tushare as ts
from matplotlib import pyplot as plt
from matplotlib import style
import pandas_datareader.data as web

style.use('ggplot')
start = dt.datetime(2000,1,1)
end = dt.datetime(2016,12,31)
df = web.DataReader('TSLA', 'yahoo', start, end)
df.to_csv('tsla.csv')
df = pd.read_csv('tsla.csv', parse_dates=True, index_col=0)

# plot multiple picture
df['100ma'] = df['Adj Close'].rolling(window=100, min_periods=0).mean()
ax1 = plt.subplot2grid((6,1), (0,0), rowspan=5, colspan=1)
ax2 = plt.subplot2grid((6,1), (5,0), rowspan=1, colspan=1, sharex=ax1)

ax1.plot(df.index, df['Adj Close'])
ax1.plot(df.index, df['100ma'])
ax1.plot(df.index, df['Volume'])

# Groupby.ohlc() :Compute sum of values,
# excluding missing values For multiple groupings,
# the result index will be a MultiIndex.
df_ohlc = df['Adj Close'].resample('10D').ohlc()
```

## Matplotlib Tutorial Series -Graphing

```python
# Styles
from matplotlib import style
style.use('ggplot')
style.use('fivethirtyeight')
print plt.style.available
plt.__file__



# differnet kinds of chart
import matplotlib.pyplot as plt
x = [1,2,3]
y = [4,5,6]
bins = range(0,10,1)

plt.plot(x, y, label='', linewidth=5)
plt.bar(x, y, label='', color='r')  # bar Chart
plt.hist(x, bins, histtype='bar', rwidth =0.8)  # histogram Chart
plt.scatter(x,y, label='skitscat', color='r', s=500, marker='x')
plt.stackplot(x,y1,,y2, colors=['b','k']) # no label method
plt.pie(x, lables=['','',''], colors=['','',''], startangle=90,
           shadow=True, explode=(0,0,0), autopct=%1.1f%%)


# label
plt.xlabel('Plot Number')
plt.ylabel('Import var')
plt.title('Interesting \n Check')  # \n for subtitle

plt.legend()  # need label value in plt.plot()



# open files by NumPy
import numpy as np
x,y = np.loadtxt('xxx.txt',
                 delimiter=',',
                 unpack = True) # unpack means transpose

# customize subplot
fig = plt.figure
ax1 = plt.subplot2grid((1,1), (0,0))
ax1.plot_date(date, closep, '-', label = 'Price')
ax1.grid(True, color='', linestyle='-', linewidth=1)  # add grid

# customize window
plt.subplots_adjust(left=0.09, bottom=0.20, right=0.94, top=0.90, wspace= 0.2, hspace=0)

# customize labels color
plt.xaxis.label.set_color('c')
plt.yaxis.label.set_color('r')

ax1.tick_params(axis='x', colors='b')  # tick_params color

# customize marks
ax1.set_yticks(0, 25, 50, 75)

# convert unix time
import datetime as data
dateconv = np.vectorize(dt.datetime.fromtimestamp)
date = dateconv(date)

# fill_between
ax1.fill_between(date, closep, 0, alpha=3) # 0 for base; alpha for transparency

# fill_between example
ax1.fill_between(date, closep, closep[0],    
                 where(closep > closep[0],   # assume buy the stock since IPO
                 facecolor='g', alpha=0.5))  # mark profit as Green
ax1.fill_between(date, closep, closep[0],
                 where(closep < closep[0],
                 facecolor='r', alpha=0.5))  # mark loss as red

ax1.plot([],[], linewidth=5, label='loss', color='r', alpha=0.5) # set legend
ax1.axhline(closep[0], color='k', linewidth=5)  # set line for base

# customize legends
ax1.legend()
leg = ax1.legend(loc=9, ncol=2, prop={size:11}) # legend(loc='best')
leg.get_frame().set_alpha(0.4)

ax2.lenged()   # just set customization below
leg = ax2.legend(loc=9, ncol=2, prop={size:11})
leg.get_frame().set_alpha(0.4)


# candletick_ohlc
import matplotlib.pyplot as plt
import matplotlib.dates as mdates
import matplotlib.ticker as mticker
from matplotlib.finance import candletick_ohlc

candlestick_ohlc(ax1, ohlc, width=0.4, colorup='g', colordown='b')

# rotate label
for label in ax1.xaxis.get_ticklabels():
    label.set_rotation(45)

# Formate dates
ax1.xaxis.set_major_formatter(mdates.DateFormatter('%Y-%m-%d'))
ax1.xaxis.set_major_locator(mticker.MaxNLocator(10)) # always show 10 dates

# add annotate arrow
ax1.annotate('Bad News!', (date[11], highp[11]),   # aim of arrow
             xytext=(0.8, 0.9), textcoords='axes fraction',
             arrowprops = dict(facecolor='grey', color='grey'))

# annotating last price to edge
bbox_props = dict(boxstyle='larrow', fc='w', ec='k', lw=1)
ax1.annotate(str(closep[-1]), (date[-1], closep[-1]),
             xytext = (date[-1]+4, closep[-1]), bbox=bbox_props)

# add text on the graph
font_dict = {'family':'serif',
             'color':'darked',
             'size':15}
ax1.text(date[10], closep[1], 'Text Example', fontdict=font_dict)

# subplot & subplot2grid
fig = plt.figure()
ax1 = fig.add_subplot(xyz)  # xyz, x row，y column，z location
ax1 = plt.subplot2grid((x,y),(m,n),  # divide by x row, y column.
                       rowspan=1,    # m,n start from 0, (m+1, n+1) location
                       colspan=1,    # span
                       sharex=ax2)   # sharex

# 21 22 !!!!!!!!!!!!!!!!!!!!!!!!!!!

# plot volume on the main Chart
ax2v = ax2.twinx()  # means share the same space
ax2v.fill_between(date[-start:], 0,
                  volume[-start:], facecolor='#0079a3', alpha=0.4)
ax2v.grid(False)
ax2v.set_ylim(0, 3*volume.max())




plt.show()

```





```python
# Live graph, Automatically update
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from matplotlib import style

style.use('fivethirtyeight')

fig = plt.figure()
ax1 = fig.add_subplot(1,1,1)

def animate(i):
    graph_data = open('xxx.txt', 'r').read()
    lines = graph_data.split('\n')
    xs = []
    ys = []
    for line in lines:
        if len(line) > 1:
            x, y = line.split(',')
            xs.append(x)
            ys.append(y)
    ax1.clear()
    ax1.plot(xs, ys)

ani = animation.FuncAnimation(fig, animate, interval=1000)
plt.show()
```
