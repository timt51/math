import numpy as np
import math

a = np.arange(5780001248500548540000000000000002459874512354754471574254741-10,5780001248500548540000000000000002459874512354754471574254741,1, dtype = object)
b = np.arange(2, 6)
c = np.arange(2, 100000000)

for x in (a ** 2 - a + 37):
	if not np.any(x % b == 0):
		print str(x) + " is prime"
		if np.any(x % c ==0):
			print str(x) + "  isn't really prime"
		else:
			str(x) + "is prime"

# int(math.sqrt(1000000000000000000000)