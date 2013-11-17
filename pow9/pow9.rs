use std::rt::io;

fn main() {
	let test_row = 10;
	let test_column = 10;

	let real_row = 1001;
	let real_column = 101;

	let mut a = ~[[0]];
	for row in range(1, test_row) {
		let mut array = [0];
		a.push(array);
		for column in range(0, test_column) {
			a[row].push(0);
		}
	}

	println((format!("{:?}", a)));
}