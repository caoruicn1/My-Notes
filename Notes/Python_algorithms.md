# Python Algorithms Notes

Github:[Python_algorithms](https://github.com/keon/algorithms)

<!-- vim-markdown-toc GitLab -->

* [Array](#array)
* [Backtrack](#backtrack)
* [Bfs](#bfs)
* [Bit](#bit)
* [Calculator](#calculator)
* [Dfs](#dfs)
* [Dp](#dp)
* [Graph](#graph)
* [Heap](#heap)
* [Linkedlist](#linkedlist)
* [Map](#map)
* [Maths](#maths)
* [Matrix](#matrix)
* [Queues](#queues)
* [Search](#search)
* [Set](#set)
* [Sort](#sort)
* [Stack](#stack)
* [Strings](#strings)
* [Tree](#tree)
* [Union-find](#union-find)

<!-- vim-markdown-toc -->

## Array

* **delete_nth**

  * Goal:返回列表,允许重复 n 次
  * Method:用 defaultdict 计数,用 for 循环返回 result
  * Method:用 collections 的 Counter

* **flatten**

  * Goal:平铺 array 中的 array
  * Method:用 isinstance 判断时候 Iterable,递归返回,生成 result 列表
  * Method:返回迭代器

* **garage**

  * Goal:初始序列车位,只能通过一个空车位移动成最终指定序列
  * Method:先获取空车位的位置,判断该位置是否和最终序列相同,若不相同,
    就获取该位置车辆,在初始序列将空位和此车辆调换。最后检查是否全部位置相同,
    可以判断空车位和最终序列相同时,其他位置是否相同,若不相同,
    则将空车位和不一样的位置互换。

* **josephus_problem**

  * Goal:每次间隔 n 人抽取出来,直到抽完
  * Method:用切片和 pop

* **longest_non_repeat**

  * Goal:寻找在字符串中重复次数最多的字母
  * Method:用一个 temp 列表计数
  * Method:用 collections 的 Counter

* **merge_intervals**

  * Goal:
  * Method:

* **missing_ranges**

  * Goal:
  * Method:

* **plus_one**

  * Goal:
  * Method:

* **rotate_array**

  * Goal:
  * Method:

* **summary_ranges**

  * Goal:
  * Method:

* **three_sum**

  * Goal:
  * Method:

* **two_sum**

  * Goal:
  * Method:

* **move_zeros_to_end**
  * Goal:
  * Method:

## Backtrack

* **general_solution.md**

  * Goal:
  * Method:

* **anagram**

  * Goal:
  * Method:

* **array_sum_combinations**

  * Goal:
  * Method:

* **combination_sum**

  * Goal:
  * Method:

* **expression_add_operators**

  * Goal:
  * Method:

* **factor_combinations**

  * Goal:
  * Method:

* **generate_abbreviations**

  * Goal:
  * Method:

* **generate_parenthesis**

  * Goal:
  * Method:

* **letter_combination**

  * Goal:
  * Method:

* **palindrome_partitioning**

  * Goal:
  * Method:

* **pattern_match**

  * Goal:
  * Method:

* **permute**

  * Goal:
  * Method:

* **permute_unique**

  * Goal:
  * Method:

* **subsets**

  * Goal:
  * Method:

* **subsets_unique**
  * Goal:
  * Method:

## Bfs

* **shortest_distance_from_all_buildings**

  * Goal:
  * Method:

* **word_ladder**
  * Goal:
  * Method:

## Bit

* **bytes_int_conversion**

  * Goal:
  * Method:

* **count_ones**

  * Goal:
  * Method:

* **find_missing_number**

  * Goal:
  * Method:

* **power_of_two**

  * Goal:
  * Method:

* **reverse_bits**

  * Goal:
  * Method:

* **single_number**

  * Goal:
  * Method:

* **single_number2**

  * Goal:
  * Method:

* **single_number3**

  * Goal:
  * Method:

* **subsets**

  * Goal:
  * Method:

* **add_bitwise_operator**

  * Goal:
  * Method:

* **bit_operation**

  * Goal:
  * Method:

* **swap_pair**

  * Goal:
  * Method:

* **find_difference**

  * Goal:
  * Method:

* **has_alternative_bit**

  * Goal:
  * Method:

* **insert_bit**

  * Goal:
  * Method:

* **remove_bit**
  * Goal:
  * Method:

## Calculator

* **math_parser**
  * Goal:
  * Method:

## Dfs

* **all_factors**

  * Goal:
  * Method:

* **count_islands**

  * Goal:
  * Method:

* **pacific_atlantic**

  * Goal:
  * Method:

* **sudoku_solver**

  * Goal:
  * Method:

* **walls_and_gates**
  * Goal:
  * Method:

## Dp

* **buy_sell_stock**

  * Goal:
  * Method:

* **climbing_stairs**

  * Goal:
  * Method:

* **coin_change**

  * Goal:
  * Method:

* **combination_sum**

  * Goal:
  * Method:

* **egg_drop**

  * Goal:
  * Method:

* **house_robber**

  * Goal:
  * Method:

* **job_scheduling**

  * Goal:
  * Method:

* **knapsack**

  * Goal:
  * Method:

* **longest_increasing**

  * Goal:
  * Method:

* **matrix_chain_order**

  * Goal:
  * Method:

* **max_product_subarray**

  * Goal:
  * Method:

* **max_subarray**

  * Goal:
  * Method:

* **min_cost_path**

  * Goal:
  * Method:

* **num_decodings**

  * Goal:
  * Method:

* **regex_matching**

  * Goal:
  * Method:

* **rod_cut**

  * Goal:
  * Method:

* **word_break**
  * Goal:
  * Method:

## Graph

* **strongly_connected**

  * Goal:
  * Method:

* **clone_graph**

  * Goal:
  * Method:

* **cycle_detection**

  * Goal:
  * Method:

* **find_all_cliques**

  * Goal:
  * Method:

* **find_path**

  * Goal:
  * Method:

* **graph**

  * Goal:
  * Method:

* **markov_chain**

  * Goal:
  * Method:

* **minimum_spanning_tree**

  * Goal:
  * Method:

* **satisfiability**

  * Goal:
  * Method:

* **tarjan**

  * Goal:
  * Method:

* **traversal**
  * Goal:
  * Method:

## Heap

* **merge_sorted_k_lists**

  * Goal:
  * Method:

* **skyline**

  * Goal:
  * Method:

* **sliding_window_max**

  * Goal:
  * Method:

* **binary_heap**
  * Goal:
  * Method:

## Linkedlist

* **add_two_numbers**

  * Goal:
  * Method:

* **copy_random_pointer**

  * Goal:
  * Method:

* **delete_node**

  * Goal:
  * Method:

* **first_cyclic_node**

  * Goal:
  * Method:

* **is_cyclic**

  * Goal:
  * Method:

* **is_palindrome**

  * Goal:
  * Method:

* **kth_to_last**

  * Goal:
  * Method:

* **linkedlist**

  * Goal:
  * Method:

* **remove_duplicates**

  * Goal:
  * Method:

* **reverse**

  * Goal:
  * Method:

* **rotate_list**

  * Goal:
  * Method:

* **swap_in_pairs**

  * Goal:
  * Method:

* **is_sorted**

  * Goal:
  * Method:

* **remove_range**
  * Goal:
  * Method:

## Map

* **hashtable**

  * Goal:
  * Method:

* **separate_chaining_hashtable**

  * Goal:
  * Method:

* **longest_common_subsequence**

  * Goal:
  * Method:

* **randomized_set**

  * Goal:
  * Method:

* **valid_sudoku**
  * Goal:
  * Method:

## Maths

* **base_conversion**

  * Goal:
  * Method:

* **extended_gcd**

  * Goal:
  * Method:

* **gcd/lcm**

  * Goal:
  * Method:

* **generate_strobogrammtic**

  * Goal:
  * Method:

* **is_strobogrammatic**

  * Goal:
  * Method:

* **next_bigger**

  * Goal:
  * Method:

* **next_perfect_square**

  * Goal:
  * Method:

* **nth_digit**

  * Goal:
  * Method:

* **prime_check**

  * Goal:
  * Method:

* **primes_sieve_of_eratosthenes**

  * Goal:
  * Method:

* **pythagoras**

  * Goal:
  * Method:

* **rabin_miller**

  * Goal:
  * Method:

* **rsa**

  * Goal:
  * Method:

* **sqrt_precision_factor**

  * Goal:
  * Method:

* **summing_digits**
  * Goal:
  * Method:

## Matrix

* **sudoku_validator**

  * Goal:
  * Method:

* **bomb_enemy**

  * Goal:
  * Method:

* **copy_transform**

  * Goal:
  * Method:

* **count_paths**

  * Goal:
  * Method:

* **matrix_rotation.txt**

  * Goal:
  * Method:

* **rotate_image**

  * Goal:
  * Method:

* **search_in_sorted_matrix**

  * Goal:
  * Method:

* **sparse_dot_vector**

  * Goal:
  * Method:

* **sparse_mul**

  * Goal:
  * Method:

* **spiral_traversal**
  * Goal:
  * Method:

## Queues

* **max_sliding_window**

  * Goal:
  * Method:

* **moving_average**

  * Goal:
  * Method:

* **queue**

  * Goal:
  * Method:

* **reconstruct_queue**

  * Goal:
  * Method:

* **zigzagiterator**
  * Goal:
  * Method:

## Search

* **binary_search**

  * Goal:
  * Method:

* **first_occurance**

  * Goal:
  * Method:

* **last_occurance**

  * Goal:
  * Method:

* **search_insert**

  * Goal:
  * Method:

* **two_sum**

  * Goal:
  * Method:

* **search_range**

  * Goal:
  * Method:

* **find_min_rotate**

  * Goal:
  * Method:

* **search_rotate**
  * Goal:
  * Method:

## Set

* **randomized_set**

  * Goal:
  * Method:

* **set_covering**
  * Goal:
  * Method:

## Sort

* **bubble_sort**

  * Goal:
  * Method:

* **comb_sort**

  * Goal:
  * Method:

* **counting_sort**

  * Goal:
  * Method:

* **heap_sort**

  * Goal:
  * Method:

* **insertion_sort**

  * Goal:
  * Method:

* **meeting_rooms**

  * Goal:
  * Method:

* **merge_sort**

  * Goal:
  * Method:

* **quick_sort**

  * Goal:
  * Method:

* **selection_sort**

  * Goal:
  * Method:

* **sort_colors**

  * Goal:
  * Method:

* **topsort**

  * Goal:
  * Method:

* **wiggle_sort**
  * Goal:
  * Method:

## Stack

* **longest_abs_path**

  * Goal:
  * Method:

* **simplify_path**

  * Goal:
  * Method:

* **stack**

  * Goal:
  * Method:

* **valid_parenthesis**

  * Goal:
  * Method:

* **stutter**

  * Goal:
  * Method:

* **switch_pairs**

  * Goal:
  * Method:

* **is_consecutive**

  * Goal:
  * Method:

* **remove_min**

  * Goal:
  * Method:

* **is_sorted**
  * Goal:
  * Method:

## Strings

* **fizzbuzz**

  * Goal:
  * Method:

* **delete_reoccurring_characters**

  * Goal:
  * Method:

* **strip_url_params**

  * Goal:
  * Method:

* **validate_coordinates**

  * Goal:
  * Method:

* **domain_extractor**

  * Goal:
  * Method:

* **merge_string_checker**

  * Goal:
  * Method:

* **add_binary**

  * Goal:
  * Method:

* **breaking_bad**

  * Goal:
  * Method:

* **decode_string**

  * Goal:
  * Method:

* **encode_decode**

  * Goal:
  * Method:

* **group_anagrams**

  * Goal:
  * Method:

* **int_to_roman**

  * Goal:
  * Method:

* **is_palindrome**

  * Goal:
  * Method:

* **license_number**

  * Goal:
  * Method:

* **make_sentence**

  * Goal:
  * Method:

* **multiply_strings**

  * Goal:
  * Method:

* **one_edit_distance**

  * Goal:
  * Method:

* **rabin_karp**

  * Goal:
  * Method:

* **reverse_string**

  * Goal:
  * Method:

* **reverse_vowel**

  * Goal:
  * Method:

* **reverse_words**

  * Goal:
  * Method:

* **roman_to_int**

  * Goal:
  * Method:

* **word_squares**
  * Goal:
  * Method:

## Tree

* **bst**

  * Goal:
  * Method:

* **array2bst**

  * Goal:
  * Method:

* **bst_closest_value**

  * Goal:
  * Method:

* **BSTIterator**

  * Goal:
  * Method:

* **delete_node**

  * Goal:
  * Method:

* **is_bst**

  * Goal:
  * Method:

* **kth_smallest**

  * Goal:
  * Method:

* **lowest_common_ancestor**

  * Goal:
  * Method:

* **predecessor**

  * Goal:
  * Method:

* **serialize_deserialize**

  * Goal:
  * Method:

* **successor**

  * Goal:
  * Method:

* **unique_bst**

  * Goal:
  * Method:

* **depth_sum**

  * Goal:
  * Method:

* **count_left_node**

  * Goal:
  * Method:

* **num_empty**

  * Goal:
  * Method:

* **height**

  * Goal:
  * Method:

* **red_black_tree**

  * Goal:
  * Method:

* **red_black_tree**

  * Goal:
  * Method:

* **segment_tree**

  * Goal:
  * Method:

* **segment_tree**

  * Goal:
  * Method:

* **traversal**

  * Goal:
  * Method:

* **inorder**

  * Goal:
  * Method:

* **level_order**

  * Goal:
  * Method:

* **zigzag**

  * Goal:
  * Method:

* **trie**

  * Goal:
  * Method:

* **add_and_search**

  * Goal:
  * Method:

* **trie**

  * Goal:
  * Method:

* **binary_tree_paths**

  * Goal:
  * Method:

* **bintree2list**

  * Goal:
  * Method:

* **deepest_left**

  * Goal:
  * Method:

* **invert_tree**

  * Goal:
  * Method:

* **is_balanced**

  * Goal:
  * Method:

* **is_subtree**

  * Goal:
  * Method:

* **is_symmetric**

  * Goal:
  * Method:

* **longest_consecutive**

  * Goal:
  * Method:

* **lowest_common_ancestor**

  * Goal:
  * Method:

* **max_height**

  * Goal:
  * Method:

* **max_path_sum**

  * Goal:
  * Method:

* **min_height**

  * Goal:
  * Method:

* **path_sum**

  * Goal:
  * Method:

* **path_sum2**

  * Goal:
  * Method:

* **pretty_print**

  * Goal:
  * Method:

* **same_tree**

  * Goal:
  * Method:

* **tree**
  * Goal:
  * Method:

## Union-find

* **count_islands**
  * Goal:
  * Method:
