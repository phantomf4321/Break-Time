def fibo(N):
 # variables for generating fibonacci sequence
 f3 = 0
 f1 = 1
 f2 = 1
 # 0 and 1 both are fibonacci numbers
 if (N == 0 or N == 1):
  return(True)

 else:
  # generating the fibonacci numbers until the generated number is less than  N
  while f3 < N:
   f3 = f1 + f2
   f2 = f1
   f1 = f3
  if f3 == N:
   return(True)
  else:
   return(False)




N = int(input())

for i in range(1,N+1):
 if(fibo(i)):
  print("+", end="")
 else:
  print("-", end="")
