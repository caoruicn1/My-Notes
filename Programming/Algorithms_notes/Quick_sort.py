"""
在大循环中，
	第一小循环将所有小的放到左边，大的放右边，循环中先给左边赋值，值为右边（看后）
	第二小循环将交换好后，pivot左边的数再排列，
		如果最左边小于等于pivot，则正常，会一直加left到left=right然后退出循环。
		如果最左边大于pivot，则将右边的值赋值为最左边的值（此时右边的原值不见了，但其实右边的原值再第一小循环中已经不见了，所以无所谓），即将大的值又放到右边。然后重新返回第一个循环的结束部分，此时会产生左右值都相等，此时会一直循环到left=right退出循环。

（接）然后再大循环外给右边赋值，实现交换。

递归。
第一个负责左边部分的排序。（left在第二小循环中被+++到变成分界线）
第二个负责右边部分的排序。

渐渐会将最大的值放在最右边，最小的值放在最左边，所以最左最右都不用计算了。

会一直return多个lists出来，但只算最后一个，就是全部排列好的。

总的来说，分成左右两边后，会再继续将左右两边各自分成左右两边，递归下去。
"""

def quick_sort(lists, left, right):
    # 快速排序
    if left >= right:
        print(left,right)
        return lists
    key = lists[left]
    low = left
    high = right
    while left < right:
        while left < right and lists[right] >= key: #右边大于左边
            right -= 1
        lists[left] = lists[right]   # 右边小于左边，将 右边放到左边
        
        while left < right and lists[left] <= key:  # 左边小于最左边
            left += 1
        lists[right] = lists[left]    # 若左边大于最左边，
    lists[right] = key
    quick_sort(lists, low, left - 1)
    quick_sort(lists, left + 1, high)
    return lists
