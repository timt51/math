
def is_prime(a):
    return all(a % i for i in range(2, int(a**.5)+1))


n_for_prime = 4
print "----------------------------------------"
for n in range(3, 1000000):
	possible_prime = n**2 - n + 41
	if is_prime(possible_prime):
		# print "The prime is " + str(possible_prime)
		# print "The value of n is: " + str(n)
		previous_n_for_prime = n_for_prime
		n_for_prime = n
		prime_gap = n - previous_n_for_prime
		if possible_prime > 1857049783:
			print "The prime is: " + str(possible_prime)
			print "The prime gap is: " + str(prime_gap)