"""
O(N^2)
1. Start with one card in your hand,
2. Pick the next card and insert it into its proper sorted order,
3. Repeat previous step for all cards.
"""

def insertion_sort(series):
    for i,v in enumerate(series):
        position = i
        while position > 0 and series[position-1] > v:
            series[position],series[position-1] = series[position-1],series[position]
            position -= 1
    return series
