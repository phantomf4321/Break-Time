import math
import numpy as np

def CS(number):
 root = math.sqrt(number)
 if int(root + 0.5) ** 2 == number:
  return(True)
  #print(number, "is a perfect square")
 else:
  return(False)
  #print(number, "is not a perfect square")


# Taking the input from user
number = int(input())

arr=np.empty(0)


for j in range(0,number):
 l, r = input().split()
 l=int(l)
 r=int(r)
 counter = 0
 for i in range(l, r + 1):
  if (CS(i)):
   counter = counter + 1
  # print(i)

 arr=np.append(arr, counter)

arr=arr.astype(int)
for j in range(0,number):
 print(arr[j])


#l=np.empty(0)
#print(l)

#l=np.append(l, 1)
#print(l)

#l=np.append(l, [2, 3, 4])
#print(l)




# https://djangocentral.com/python-program-to-check-if-a-number-is-perfect-square/
#https://likegeeks.com/numpy-array-tutorial/#:~:text=this%3A%20import%20numpy-,Add%20array%20element,method%20of%20the%20NumPy%20module.&text=The%20values%20will%20be%20appended,is%20going%20to%20be%20displayed.
#https://stackoverflow.com/questions/4162815/how-to-read-two-inputs-separated-by-space-in-a-single-line
#https://www.codegrepper.com/code-examples/python/convert+array+to+integer+python
