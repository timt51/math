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
	let mut n_for_prime = 4;
	for n in range(3, 10000) {
		let possible_prime = n*n - n + 41;
		if is_prime(possible_prime) {
			println(format!("The prime is: {:d}", possible_prime));
			println(format!("The value of n is: {:d}", n));
			let previous_n_for_prime = n_for_prime;
			n_for_prime = n;
			println(format!("The prime gap is: {:d}", n - previous_n_for_prime))
		}
	}
}