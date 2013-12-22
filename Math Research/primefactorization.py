import math
import numpypy as np

def isPrime(n):
  for x in np.arange(2, int(np.sqrt(n))):
    if n % x == 0:
      return False
  return True

def only_first_factor(n):
  primes = []
  candidates = np.arange(2, int(np.sqrt(n)))
  for candidate in candidates:
    if n % candidate == 0:
      primes.append(candidate)
      break      
  return primes

factors = []
for n in np.arange(0, 10000):
  value = n*n-n+37
  if not isPrime(value):
    factors.append(only_first_factor(value)[0])

print factors