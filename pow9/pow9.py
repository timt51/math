board = []
for row in xrange(0, 1000):
    board.append([])
    for column in xrange(0, 100):
        board[row].append(0)

def check_left(row,column,board):
    numbers_left = []
    for iter_column in xrange(0, column):
        numbers_left.append(board[row][iter_column])

    if board[row][column] in numbers_left:
        return False
    else:
        return True

def check_up(row,column,board):
    numbers_up = []
    for iter_row in xrange(0, row):
        numbers_up.append(board[iter_row][column])

    if board[row][column] in numbers_up:
        return False
    else:
        return True

for row in xrange(0,1000):
    for column in xrange(0, 100):
        while(not check_left(row, column, board) or not check_up(row, column, board)):
            board[row][column] += 1

print board
