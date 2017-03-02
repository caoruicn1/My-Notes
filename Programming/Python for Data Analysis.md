# Python for Data Analysis

## Chapter 3 IPython: An Interactive Computing and Development Environment

- Tab自动完成
- `b?`：显示该对象一些通用信息或者帮助
- `b??`：显示源代码
- `np.*load*?`：搜索命名空间，列出含有“load”的所有函数
- `%run` ：运行程序
- `Ctrl-C`：终止正在执行的代码
- `%paste`或者`%cpaste`：执行剪贴板中的代码

- **IPython Keyboard Shortcuts**

  Command              | Description
  -------------------- | ------------------------------------------------------------------------------------
  Ctrl-P or up-arrow   | Search backward in command history for commands starting with currently-entered text
  Ctrl-N or down-arrow | Search forward in command history for commands starting with currently-entered text
  Ctrl-R               | Readline-style reverse history search (partial matching)
  Ctrl-Shift-V         | Paste text from clipboard
  Ctrl-C               | Interrupt currently-executing code
  Ctrl-A               | Move cursor to beginning of line
  Ctrl-E               | Move cursor to end of line
  Ctrl-K               | Delete text from cursor until end of line
  Ctrl-U               | Discard all text on current line
  Ctrl-F               | Move cursor forward one character
  Ctrl-B               | Move cursor back one character
  Ctrl-L               | Clear screen

- **Magic Commands**

  Command              | Description
  -------------------- | -----------------------------------------------------------------------------------------------------------------------------------
  %quickref            | Display the IPython Quick Reference Card
  %magic               | Display detailed documentation for all of the available magic commands
  %debug               | Enter the interactive debugger at the bottom of the last exception traceback
  %hist                | Print command input (and optionally output) history
  %pdb                 | Automatically enter debugger after any exception
  %paste               | Execute pre-formatted Python code from clipboard
  %cpaste              | Open a special prompt for manually pasting Python code to be executed
  %reset               | Delete all variables / names defined in interactive namespace
  %page OBJECT         | Pretty print the object and display it through a pager
  %run script.py       | Run a Python script inside IPython
  %prun statement      | Execute statement with cProfile and report the profiler output
  %time statement      | Report the execution time of single statement
  %timeit statement    | Run a statement multiple times to compute an emsemble average execution time. Useful for timing code with very short execution time
  %who, %who_ls, %whos | Display variables defined in interactive namespace, with varying levels of information / verbosity
  %xdel variable       | Delete a variable and attempt to clear any references to the object in the IPython internals

- **Input and Output Variables**
  - `_number`: for the Output.
  - `_inumber`: for the Input.

    ```python
    In [27]: foo
    Out[27]: 'bar'

    In [28]: _i27
    Out[28]: u'foo'

    In [29]: _27
    Out[29]: 'bar'
    ```

- **Logging the Input and Output**
  - %logstart, %logoff, %logon, %logstate, and %logstop.

- **Interacting with the Operating System**

  Command               | Description
  --------------------- | ---------------------------------------------------------------
  !cmd                  | Execute cmd in the system shell
  output = !cmd args    | Run cmd and store the stdout in output
  %alias alias_name cmd | Define an alias for a system (shell) command
  %bookmark             | Utilize IPython's directory bookmarking system
  %cd directory         | Change system working directory to passed directory
  %pwd                  | Return the current system wo rking directory
  %pushd directory      | Place current directory on stack and change to target directory
  %popd                 | Change to directory popped off the top of the stack
  %dirs                 | Return a list containing the current directory stack
  %dhist                | Print the history of visited directories
  %env                  | Return the system environment variables as a dict

- **Interactive Debugger**

  Command                  | Action
  ------------------------ | --------------------------------------------------------------
  h(elp)                   | Display command list
  help command             | Show documentation for command
  c(ontinue)               | Resume program execution
  q(uit)                   | Exit debugger without executing any more code
  b(reak) number           | Set breakpoint at number in current file
  b path/to/file.py:number | Set breakpoint at line number in specified file
  s(tep)                   | Step into function call
  n(ext)                   | Execute current line and advance to next line at current level
  u(p) / d(own)            | Move up/down in function call stack
  a(rgs)                   | Show arguments for current function
  debug statement          | Invoke statement statement in new (recursive) debugger
  l(ist) statement         | Show current position and context at current level of stack
  w(here)                  | Print full stack trace with context at current position

- **Basic Profiling: %prun and %run -p**
  - In shell:  python -m cProfile -s cumulative cprof_example.py
  - In IPython:
    - %prun -l 7 -s cumulative run_experiment()
    - %load_ext line_profiler ; %lprun -f func1 -f func2 statement_to_profile

- **Making Your Own Classes IPython-friendly**
  - IPython takes the string returned by the __repr__ magic method.

    ```{python}
    class Message:
    def __init__(self, msg):
        self.msg = msg

    def __repr__(self):
        return 'Message: %s' % self.msg
    ```

## Chapter 4 NumPy Basics: Arrays and Vectorized Computation

- `arr.ndim`: Return the number of dimensions of an array.
- `arr.dtype`: Return structured type.
- `arr.shape`: Return the shape of an array.
- `arr.astpye(np.float64)`: Convert or cast an array from one dtype.

- **Array creation function**

  Function          | Description
  ----------------- | -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  array             | Convert input data (list, tuple, array, or other sequence type) to an ndarray either by inferring a dtype or explicitly specifying a dtype. Copies the input data by default.
  asarray           | Convert input to ndarray, but do not copy if the input is already an ndarray
  arange            | Like the built-in range but returns an ndarray instead of a list.
  ones, ones_like   | Produce an array of all 1's with the given shape and dtype. ones_like takes another array and produces a ones array of the same shape and dtype.
  zeros, zeros_like | Like ones and ones_like but producing arrays of 0's instead
  empty, empty_like | Create new arrays by allocating new memory, but do not populate with any values like ones and zeros
  eye, identity     | Create a square N x N identity matrix (1's on the diagonal and 0's elsewhere)

- **Data Types for ndarrays**
  ```python
  In [27]: arr1 = np.array([1, 2, 3], dtype=np.float64)
  In [28]: arr2 = np.array([1, 2, 3], dtype=np.int32)
  ```

- **NumPy data types**

  Type                             | Type Code    | Description
  -------------------------------- | ------------ | --------------------------------------------------------------------------------------------------------------------
  int8, uint8                      | i1, u1       | Signed and unsigned 8-bit (1 byte) integer types
  int16, uint16                    | i2, u2       | Signed and unsigned 16-bit integer types
  int32, uint32                    | i4,u4        | Signed and unsigned 32-bit integer types
  int64, uint64                    | i8,u8        | Signed and unsigned 32-bit integer types
  float16                          | f2           | Half-precision floating point
  float32                          | f4 or f      | Standard single-precision floating point. Compatible with C float
  float64, float128                | f8 or d      | Standard double-precision floating point. Compatible with C double and Python float object
  float128                         | f16 or g     | Extended-precision floating point
  complex64, complex128,complex256 | c8, c16, c32 | Complex numbers represented by two 32, 64, or 128 floats, respectively
  bool                             | ?            | Boolean type storing True and False values
  object                           | 0            | Python object type
  string_                          | S            | Fixed-length string type (1 byte per character). For example, to create a string dtype with length 10, use 'S10'.
  unicode_                         | U            | Fixed-length unicode type (number of bytes platform specific). Same specification semantics as string_ (e.g. 'U10').

- **Basic Indexing and Slicing**
  - `arr_slice[1] = 12345`: Changeable
  - **Indexing with slices**
    - `arr[5:8].copy()`: Copy the array, in case affect the original slice.

  - `arr[0][2] = arr[0,2]`: Equivalent way to accessed individual elements.

- **Boolean Indexing**
  - The boolean array can be passed when indexing the array:
  - Selecting data from an array by boolean indexing _always creates a copy of the data_.

  ```python
  In [83]: names = np.array(['Bob', 'Joe', 'Will', 'Bob', 'Will', 'Joe', 'Joe'])
  In [84]: data = randn(7, 4)
  In [85]: names
  Out[85]:
  array(['Bob', 'Joe', 'Will', 'Bob', 'Will', 'Joe', 'Joe'],
  dtype='|S4')

  In [86]: data
  Out[86]:
  array([[-0.048 , 0.5433, -0.2349, 1.2792],
         [-0.268 , 0.5465, 0.0939, -2.0445],
         [-0.047 , -2.026 , 0.7719, 0.3103],
         [ 2.1452, 0.8799, -0.0523, 0.0672],
         [-1.0023, -0.1698, 1.1503, 1.7289],
         [ 0.1913, 0.4544, 0.4519, 0.5535],
         [ 0.5994, 0.8174, -0.9297, -1.2564]])

  In [87]: names == 'Bob'
  Out[87]: array([ True, False, False, True, False, False, False], dtype=bool)

  In [88]: data[names == 'Bob']
  Out[88]:
  array([[-0.048 , 0.5433, -0.2349, 1.2792],
         [ 2.1452, 0.8799, -0.0523, 0.0672]])

  In [89]: data[names == 'Bob', 2:] Out[89]:
  array([[-0.2349, 1.2792],
         [-0.0523, 0.0672]])
  ```

- **Fancy Indexing**
  - Fancy indexing is a term adopted by NumPy to describe indexing using integer arrays.
    ```python
    In [102]: arr
    Out[102]: array([[ 0., 0., 0., 0.,],
                     [ 1., 1., 1., 1.,]
                     [ 2., 2., 2., 2.,]
                     [ 3., 3., 3., 3.,]
                     [ 4., 4., 4., 4.,]
                     [ 5., 5., 5., 5.,]
                     [ 6., 6., 6., 6.,]
                     [ 7., 7., 7., 7.,]])

    In [103]: arr[[4, 3, 0, 6]]
    Out[103]:
    array([[ 4., 4., 4., 4.],
           [ 3., 3., 3., 3.],
           [ 0., 0., 0., 0.],
           [ 6., 6., 6., 6.]])

    In [104]: arr[[-3, -5, -7]]
    Out[104]:
    array([[ 5., 5., 5., 5.],
           [ 3., 3., 3., 3.],
           [ 1., 1., 1., 1.]])
    ```
    - Pay attention!
      ```python
      # more on reshape in Chapter 12
      In [105]: arr = np.arange(32).reshape((8, 4))
      In [106]: arr Out[106]: array([[ 0,  1,  2,  3],
                                     [ 4,  5,  6,  7],
                                     [ 8,  9, 10, 11],
                                     [12, 13, 14, 15],
                                     [16, 17, 18, 19],
                                     [20, 21, 22, 23],
                                     [24, 25, 26, 27],
                                     [28, 29, 30, 31]])

      In [107]: arr[[1, 5, 7, 2], [0, 3, 1, 2]]
      Out[107]: array([ 4, 23, 29, 10])
      ```
      - Take a moment to understand what just happened: the elements (1, 0), (5, 3), (7, 1),and (2, 2) were selected.

      -  **Two way** to get the rectangular region

      ```python
      In [108]: arr[[1, 5, 7, 2]][:, [0, 3, 1, 2]]
      Out[108]: array([[ 4, 7, 5, 6],
                       [20, 23, 21, 22],
                       [28, 31, 29, 30],
                       [ 8, 11, 9, 10]])

      # use the np.ix_ function
      In [109]: arr[np.ix_([1, 5, 7, 2], [0, 3, 1, 2])]
      Out[109]:
      array([[ 4, 7, 5, 6],
             [20, 23, 21, 22],
             [28, 31, 29, 30],
             [ 8, 11, 9, 10]])
      ```




## Chapter 5 Getting Started with pandas

## Chapter 6 Data Loading, Storage, and File Formats

## Chapter 7 Data Wrangling: Clean, Transform, Merge, Reshape

## Chapter 8 Plotting and Visualization

## Chapter 9 Data Aggregation and Group Operations

## Chapter 10 Time Series

## Chapter 11 Financial and Economic Data Applications

## Chapter 12 Advanced NumPy
