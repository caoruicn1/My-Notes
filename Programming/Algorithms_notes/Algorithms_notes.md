# Algorithms Notes

- 学习网站： [https://visualgo.net](https://visualgo.net)

## Sorting

- [八大排序算法](http://python.jobbole.com/82270/)

- **Bubble Sort**
	- 从头到尾两两比较，然后立刻交换，把小的放在前面。
	- 这样最小的数肯定跑到最前面了，所以接下来只需算N-1次，即第一个不用算了,以此类推。
	- $O(N^2)$

- **Selection Sort**
	- 从头到尾找到最小的值，然后放到最前面，接下来只需要从第二个开始算，以此类推。
	- 最后一个不用算，因为算到倒数第二个的时候，最后一个已经就是最小的了。
	- $O(N^2)$

- **Insertion Sort**
	- 从头到尾，和前面相邻的数对比，小于的话就插到他的前面。
	- $O(N^2)$

- **Merge Sort**
	- 采用递归
	- 分成两半，然后从各自的head值开始比较，再合并

