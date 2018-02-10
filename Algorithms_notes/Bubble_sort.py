"""
O(N^2)
1. Compare a pair of adjacent items (a, b),
2. Swap that pair if the items are out of order (in this case, when a > b),
3. Repeat Step 1 and 2 until we reach the end of array(the last pair is the (N-2)-th and (N-1)-th items as we use 0-based indexing),
4. By now, the largest item will be at the last position. We then reduce N by 1 and repeat Step 1 until we have N = 1.
"""

def bubble_sort(series):

    N = len(series)
    while N:
        for i in range(N-1):
            if series[i] > series[i+1]:
                series[i],series[i+1] = series[i+1],series[i]
        N -= 1

    return series
