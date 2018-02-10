# Algorithms Notes

- 学习网站： [https://visualgo.net](https://visualgo.net)

## Sorting

- **Bubble Sort**
	- 从头到尾两两比较，然后立刻交换。
	- 这样最大的数肯定跑到最后面了，所以接下来只需算N-1次,以此类推。
	- $O(N^2)$

- **Selection Sort**
	- 从头到尾找到最小的值，然后放到最前面，接下来只需要从第二个开始算，以此类推。
	- 最后一个不用算，因为算到倒数第二个的时候，最后一个已经就是最小的了。
	- $O(N^2)$