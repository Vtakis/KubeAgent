#!/usr/bin/env python
# Python program to print all  
# prime number in an interval 
  
start = 1
end = 25000

while True:
    for val in range(start, end + 1):  
        if val > 1: 
            for n in range(2, val): 
                if (val % n) == 0: 
                    break
            else: 
                print(val) 
