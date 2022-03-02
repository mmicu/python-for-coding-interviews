# Python for coding interviews


## Primitive Types
1. Integers (`int`).
1. Floats (`float`).
1. Strings (`str`).
1. Booleans (`bool`).

```python
>>> i, f, s, b = 12, 8.31, 'Hello, world!', True
>>> type(i)  # <class 'int'>   ~ Unbounded
>>> type(f)  # <class 'float'> ~ Bounded
>>> type(s)  # <class 'str'>
>>> type(b)  # <class 'bool'>

>>> str(i)
'12'
>>> float(i)
12.0
>>> str(b)
'True'
>>> int('10')
10
>>> bool('a')
True
>>> bool(1)
True
>>> bool('')
False
>>> bool(0.0)
False
>>> bool(0)
False

>>> min(i, 1)
1
>>> max(i, 1)
12
>>> max(i, f)
12

>>> pow(2, 3)
8
>>> 2 ** 3
8

>>> import math
>>> math.ceil(7.2)
8
>>> math.floor(7.2)
7
>>> math.sqrt(4)
2.0

>>> float('inf')  # Pseudo max-int
inf
>>> float('-inf')  # Pseudo min-int
-inf
```


### Bit manipulation
TODO


## Arrays
More info about time complexity for lists can be found [here][python-time-complexity].
```python
>>> l = [1, 2, 'a']
>>> type(l)  # <class 'list'>
>>> len(l)
3
>>> l[0]  # First element of the list
1
>>> l[-1]  # Last element of the list (equivalent to `l[len(l) - 1]`)
'a'

>>> l.append('b')  # `O(1)`
>>> l.pop()  # `O(1)` just for the last element
'b'
>>> l.pop(0)  # `O(n)` since list must be shifted
1
>>> l
[2, 'a']
>>> l.remove('a')  # `O(n)`
>>> l.remove('b')  # `ValueError: list.remove(x): x not in list`
>>> l
[2]
>>> l.index(2)
0
>>> l.index(12)  # ValueError: 12 is not in list

>>> l = [0] * 5
>>> l
[0, 0, 0, 0, 0]
>>> len(l)
5

>>> rows, cols = 2, 3
>>> m = [[0] * cols for _ in range(rows)]
>>> len(m) == rows
True
>>> all(len(m[k]) == cols for k in range(rows))
True
```


## Strings
- ord
- chr


## Stacks
```python
>>> stack = []

>>> stack.append(0)
>>> stack.append(1)
>>> stack.append(2)

>>> len(stack)
3

>>> stack[0]  # Bottom of the stack
0
>>> stack[-1]  # Top of the stack
2

>>> stack.pop()
2
>>> stack.pop()
1

>>> len(stack)
1

>>> stack.pop()
0

>>> stack.pop()  # `IndexError: pop from empty list`
>>> stack[-1]    # `IndexError: pop from empty list`
```


## Queues
```python
>>> from collections import deque

>>> queue = deque()

# Enqueue -> append()
>>> queue.append(0)
>>> queue.append(1)
>>> queue.append(2)

>>> len(queue)
3

>>> queue[0]  # Head of the queue
0
>>> queue[-1]  # Tail of the queue
2

# Dequeue -> popleft()
>>> queue.popleft()
0
>>> queue.popleft()
1

>>> len(queue)
2

>>> queue.popleft()
2

>>> len(queue)
0

>>> queue.popleft()  # `IndexError: pop from an empty deque`
>>> queue[0]  # `IndexError: pop from an empty deque`
```


## Hash Tables
TODO


## Heaps
TODO


## Searching
TODO


## collections


### namedtuple
TODO


### Counter
TODO


### defaultdict
TODO


### OrderedDict



[python-time-complexity]: https://wiki.python.org/moin/TimeComplexity
