fn main() {
	let mut x = 0;

	while ((x % 5 != 2) || (x % 7 !=3) || (x % 11 != 4) || (x % 13 != 5) || (x % 17 != 6)){
		println(format!("x: {:?}", x));
		x += 1;
	}

	println(format!("REAL ANSWER = {:?}", x))
}