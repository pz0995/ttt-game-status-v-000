# Helper Method
board = Array.new(8, " ")

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
]


def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board, combo[0])
  end
end

def full?(board)
  if board.include? == "" || board.include? == " "
    return false
else
  return true
  end
end

def winner?(board)
#should accept a board and return the token, "X" or "O" that has won the game given a winning board.
  if WIN_COMBINATIONS.any?
    return true

def draw?(board)
  !board.winner? || board.all?
  return true
end

def over?(board) #need draw
if board.draw? || board.won? || board.full?
  return true
else
  return false
end


  end
end
end
