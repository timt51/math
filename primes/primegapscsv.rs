extern mod extra;
use std::num::sqrt;
use extra::bigint;

fn is_prime(num: BigInt) -> bool {
	let mut prime = true;
	for x in range(2, sqrt(num as f64) as int +1) {
		if num % (x as BigInt) == (0 as BigInt) {
			prime = false;
			break
		}
	}
	return prime
}

fn main() {
	let mut n_for_prime = 4;
	for n in range(3, 1000000) {
		let possible_prime: BigInt = (n*n - 5) as BigInt;
		if is_prime(possible_prime) {
			let previous_n_for_prime: BigInt = n_for_prime as BigInt;
			n_for_prime = n;
			// println(format!("{:?}", (n as BigInt) - previous_n_for_prime))
			println(format!("{:?}", possible_prime))
		}
	}
}