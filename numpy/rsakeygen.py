import random
import math
import numpypy as np

a = np.arange(2, int(np.sqrt(10000000)))
def MillerRabin(n):
    if np.any(n % a == 0):
        return False
    return True

def keygen(bits):
    p = q = 3
    while p == q:
        p = random.randint(2**(bits/2-2),2**(bits/2))
        q = random.randint(2**(bits/2-2),2**(bits/2))
        p += not(p&1)                             # changes the values from 
        q += not(q&1)                             # even to odd

        while MillerRabin(p) == False:            # checks for primality
            p -= 2
        while MillerRabin(q) == False:
            q -= 2
    n = p * q   
    tot = (p-1) * (q-1)
    e = tot
    return e

print keygen(200)