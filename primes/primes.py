
def is_prime(a):
    return all(a % i for i in range(2, int(a**.5)+1))

for x in range(1,750):
	for j in range(1,750):
	    for i in range(1,750):
	        prime = x*i**2-x*i+j
	        if is_prime(prime):
	        	if i > 10:
	        		print(x, j, i, prime, is_prime(prime))
	        else:
	        	break
