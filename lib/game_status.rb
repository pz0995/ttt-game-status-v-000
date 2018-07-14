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





def won(board)
  WIN_COMBINATIONS.each_with_index do |combination, index|
    return index
    position_0 = WIN_COMBINATIONS[0]
    position_1 = WIN_COMBINATIONS[1]
    position_2 = WIN_COMBINATIONS[2]
      position_3 = WIN_COMBINATIONS[3]
    position_4 = WIN_COMBINATIONS[4]
    position_5 = WIN_COMBINATIONS[5]
      position_6 = WIN_COMBINATIONS[6]
    position_7 = WIN_COMBINATIONS[7]
    position_8 = WIN_COMBINATIONS[8]



  top_row_win = [0, 1, 2]
  middle_row_win = [3, 4, 5]
  bottom_row_win = [6, 7, 8]
  first_column_win = [0, 3, 6]
  second_column_win = [1, 4, 7]
  third_column_win = [2, 5, 8]
  first_diagonal_win = [0, 4, 8]
  second_diagonal_win = [2, 4, 6]





    if board != !top_row_win || board != !middle_row_win || board != !bottom_row_win || board != !first_column_win || board != !second_column_win || board != !third_column_win || board != !first_diagonal_win || board != !second_diagonal_win
          return top_row_win.find_index
      end
#print winning indexes
    if WIN_COMBINATIONS[0][0] == "X" &&   WIN_COMBINATIONS[0][1] == "X" && WIN_COMBINATIONS[0][2] == "X"
          return "X won in the top row"
    elsif WIN_COMBINATIONS[1][0] == "X" && WIN_COMBINATIONS[1][1] == "X" && WIN_COMBINATIONS[1][2] == "X"
          return "X won in the middle row - #{"middle_row_win"}"
    elsif WIN_COMBINATIONS[2][0] == "X" && WIN_COMBINATIONS[2][1] == "X" && WIN_COMBINATIONS[2][2] == "X"
          return "X won in the bottom row - #{"bottom_row_win"}"
    elsif WIN_COMBINATIONS[3][0] == "X" && WIN_COMBINATIONS[3][1] == "X" && WIN_COMBINATIONS[3][2] == "X"
          return "X won in the first_column - #{"first_column_win"}"
    elsif WIN_COMBINATIONS[4][0] == "X" && WIN_COMBINATIONS[4][1] == "X" && WIN_COMBINATIONS[4][2] == "X"
          return "X won in the second - #{"second_column_win"}"
    elsif WIN_COMBINATIONS[5][0]== "X" && WIN_COMBINATIONS[5][1] == "X" && WIN_COMBINATIONS[5][2] == "X"
          return "X won in the third column - #{"third_column_win"}"
          puts third_column_win
    elsif WIN_COMBINATIONS[6][0] == "X" && WIN_COMBINATIONS[6][1] == "X" && WIN_COMBINATIONS[6][2] == "X"
              return "X won in the first diagonal - #{"first_diagonal_win"}"  
    elsif WIN_COMBINATIONS[7][0] == "X" && WIN_COMBINATIONS[7][1] == "X" && WIN_COMBINATIONS[7][2] == "X"
          return "X won in the first diagonal - #{"first_diagonal_win"}"
          puts first_diagonal_win
    elsif WIN_COMBINATIONS[8][0] == "X" && WIN_COMBINATIONS[8][1] == "X" && WIN_COMBINATIONS[8][2] == "X"
          return "X won in the second diagonal - #{"second_diagonal_win"}"

          
          end

          if board[index].nil?
                return false
            end
    end


end
def full(board)
  if board.full.all
    return true
  else !board.full?
    return false
  end
end

def draw(board)
  if board.full? && board == !top_row_win || board == !middle_row_win || board == !bottom_row_win || board == !first_column_win || board == !second_column_win || board == !third_column_win || board == !first_diagonal_win || board == !second_diagonal_win
    return true
  else !board.full? && board == !top_row_win || board == !middle_row_win || board == !bottom_row_win || board == !first_column_win || board == !second_column_win || board == !third_column_win || board == !first_diagonal_win || board == !second_diagonal_win
    return false
  end
end

def over(board) #need draw
if board.full? || board == top_row_win || board == middle_row_win || board == bottom_row_win || board == first_column_win || board == second_column_win || board == third_column_win || board == first_diagonal_win || board ==  second_diagonal_win
  return true
end

def winner(board)
#should accept a board and return the token, "X" or "O" that has won the game given a winning board.
  if "X" == board[top_row_win] || "X" == board[middle_row_win] || "X" == board[bottom_row_win] || "X" == board[first_column_win] || "X" == board[second_column_win] || "X" == board[third_column_win] || "X" == board[first_diagonal_win] || "X" == board[second_diagonal_win]
    return puts "X"
  elsif"O" == board[top_row_win] || "O" == board[middle_row_win] || "O" == board[bottom_row_win] || "O" == board[first_column_win] || "O" == board[second_column_win] || "O" == board[third_column_win] || "O" == board[first_diagonal_win] || "O" == board[second_diagonal_win]
    return puts "O"
  else
    return false
  end
end
end
