board = []
(0..50).each do |row|
	board[row] = []
	(0..50).each do |column|
		board[row][column] = 0
	end
end

def check_left(row, column, board)
	numbers_left = (0..column-1).collect { |iter_column| board[row][iter_column]}

	if numbers_left.include?(board[row][column])
		return false
	else
		return true
	end
end

def check_up(row, column, board)
	numbers_up = (0..row-1).collect { |iter_row| board[iter_row][column]}

	if numbers_up.include?(board[row][column])
		return false
	else
		return true
	end
end

(0..50).each do |row|
	(0..50).each do |column|
		while ( !check_left(row, column, board) or !check_up(row, column, board))
			board[row][column] += 1
		end
	end
end

puts board.inspect