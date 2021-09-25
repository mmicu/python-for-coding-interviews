# Python for coding interviews


## Time complexity


## Stacks
```python
stack = []

stack.append(1)
stack.append(2)
stack.append(3)
stack.append(4)

len(stack) # 4

stack.pop() # 4
stack.pop() # 3

len(stack) # 2

stack.pop() # 2
stack.pop() # 1

len(stack) # 0

stack.pop() # `IndexError: pop from empty list` since the `stack` list is empty
```


## Queues
```python
from collections import deque

queue = deque()

queue.append(1)
queue.append(2)
queue.append(3)
queue.append(4)

len(queue) # 4

queue.popleft() # 1
queue.popleft() # 2

len(queue) # 2

queue.popleft() # 3
queue.popleft() # 4

len(queue) # 0

queue.popleft() # `IndexError: pop from an empty deque` since the `queue` is empty
```


## Lists

## Strings

## Maps


## Other

### Counter


https://wiki.python.org/moin/TimeComplexity
https://docs.python.org/3/library/collections.html
