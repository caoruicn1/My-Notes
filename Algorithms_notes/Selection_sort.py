"""

1. Find the position of the smallest item X, in the range of [L...N−1],
2. Swap X with the L-th item,
3. Increase the lower-bound L by 1 and repeat Step 1 until L = N-2.
"""

def selection_sort1(series):
    """
    缺陷：会修改原Series
    """
    minium = series[0]
    new_series = []
    while series != []:
        minium = series[0]
        for i in series:
            if i < minium:
                minium = i
        series.remove(minium)
        new_series.append(minium)
    return new_series

def selection_sort2(series):
    L = 0
    N = len(series)
    index = 0
    while L != N-1:
        for i in range(L,N):
            if series[i] <= series[L]:
                index = i
        series[L],series[index] = series[index],series[L]
        L += 1

    return series
