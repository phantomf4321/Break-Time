def get_divisors(n):
    for i in range(1, int(n / 2) + 1):
        if n % i == 0:
            yield i
    yield n

def num_divisors(n):
 counter = 0
 for i in get_divisors(n):
  #print(i)
  counter = counter + 1

 return(counter)


num=int(input())
sum=0

for i in range(1,500):
 sum=sum+i
 #print(sum)
 #print(num_divisors(sum))
 if(num_divisors(sum)>=num):
  print(sum)
  break
