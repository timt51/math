use std::num::sqrt;

fn is_prime(num: int) -> bool {
	let mut prime = true;
	for x in range(2, sqrt(num as f64) as int +1) {
		if num % x == 0 {
			prime = false;
			break
		}
	}
	return prime
}

fn main() {
	for a in range(1,40) {
		for b in range(1,40) {
			for c in range(1,40) {
				for x in range(1,40) {
					let prime = a*x*x+b*x+c;
					if is_prime(prime) {
						if x > 20 {
							println(format!("{:d}x^2 + {:d}x + {:d}, {:d}, {:d}, {:?}", a, b, c, x, prime, is_prime(prime)));
						}
					}
					else {
						break
					}
				}
			}
		}
		
	}
}