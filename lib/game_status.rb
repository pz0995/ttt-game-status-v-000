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
    WIN_COMBINATIONS.each do |comb|
  if board.all?
    return true
  else   comb.include? == " " || comb.empty? || comb == ""
  return false

  end
end

def winner?(board)
#should accept a board and return the token, "X" or "O" that has won the game given a winning board.
  if WIN_COMBINATIONS == won?(board)
    return true

def draw?(board)
  board.won? == false && full?(board) == true
  return true
end

def over?(board) #need draw
if board.include? || board.won?
  return true

end
end
end
end
