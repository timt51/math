fn main() {
	let mut board = [0];
	for row in range(0, 10){
		if row == 1 {
			board[0] = [];
		}
		println(format!("{:?}", row))
	}
}