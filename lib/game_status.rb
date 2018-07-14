# Helper Method
board = Array.new(8, " ")

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = []

  WIN_COMBINATIONS.each do |combination|
    puts combination



def won(board)


  win_index_0 = win_combination[0]
  win_index_1 = win_combination[1]
  win_index_2 = win_combination[2]
  win_index_3 = win_combination[3]
  win_index_4 = win_combination[4]
  win_index_5 = win_combination[5]
  win_index_6 = win_combination[6]
  win_index_7 = win_combination[7]
  win_index_8 = win_combination[8]

  position_0 = board[win_index_0]
  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]
  position_4 = board[win_index_4]
  position_5 = board[win_index_5]
  position_6 = board[win_index_6]
  position_7 = board[win_index_7]
  position_8 = board[win_index_8]

  top_row_win = [0, 1, 2]
  middle_row_win = [3, 4, 5]
  bottom_row_win = [6, 7, 8]
  first_column_win = [0, 3, 6]
  second_column_win = [1, 4, 7]
  third_column_win = [2, 5, 8]
  first_diagonal_win = [0, 4, 8]
  second_diagonal_win = [2, 4, 6]



    if board[index].nil?
          return false
      end

    if board != !top_row_win || board != !middle_row_win || board != !bottom_row_win || board != !first_column_win || board != !second_column_win || board != !third_column_win || board != !first_diagonal_win || board != !second_diagonal_win
          return top_row_win.find_index
      end

    if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"
          return "X won in the top row - #{win_index_0}"
          top_row_win.each_index = list.index(match)

    elsif board[middle_row_win[3]] == "X" && board[middle_row_win[4]] == "X" && board[middle_row_win[5]] == "X"
          return "X won in the middle row - #{"middle_row_win"}"
          puts middle_row_win
    elsif board[bottom_row_win[6]] == "X" && board[bottom_row_win[7]] == "X" && board[bottom_row_win[8]] == "X"
          return "X won in the bottom row - #{"bottom_row_win"}"
          puts bottom_row_win
    elsif board[first_column_win[0]] == "X" && board[first_column_win[1]] == "X" && board[first_column_win[2]] == "X"
          return "X won in the first_column - #{"first_column_win"}"
          puts first_column_win
    elsif board[second_column_win[0]] == "X" && board[second_column_win[3]] == "X" && board[second_column_win[6]] == "X"
          return "X won in the second - #{"second_column_win"}"
          puts second_column_win
    elsif board[third_column_win[2]] == "X" && board[third_column_win[5]] == "X" && board[third_column_win[8]] == "X"
          return "X won in the third column - #{"third_column_win"}"
          puts third_column_win
    elsif board[first_diagonal_win[0]] == "X" && board[first_diagonal_win[4]] == "X" && board[first_diagonal_win[8]] == "X"
          return "X won in the first diagonal - #{"first_diagonal_win"}"
          puts first_diagonal_win
    elsif board[second_diagonal_win[2]] == "X" && board[second_diagonal_win[4]] == "X" && board[second_diagonal_win[6]] == "X"
          return "X won in the second diagonal - #{"second_diagonal_win"}"
          puts second_diagonal_win
    elsif board[top_row_win[0]] == "O" && board[top_row_win[1]] == "O" && board[top_row_win[2]] == "O"
          return "O won in the top row - #{"middle_row_win"}"
          puts top_row_win
    elsif board[middle_row_win[3]] == "O" && board[middle_row_win[4]] == "O" && board[middle_row_win[5]] == "O"
          return "O won in the middle row - #{"middle_row_win"}"
          puts middle_row_win
    elsif board[bottom_row_win[6]] == "O" && board[bottom_row_win[7]] == "O" && board[bottom_row_win[8]] == "O"
          return "O won in the bottom row - #{"middle_row_win"}"
          puts bottom_row_win
    elsif board[first_column_win[0]] == "O" && board[first_column_win[1]] == "O" && board[first_column_win[2]] == "O"
          return "O won in the first_column - #{"middle_row_win"}"
          puts middle_row_win
    elsif board[second_column_win[0]] == "O" && board[second_column_win[3]] == "O" && board[second_column_win[6]] == "O"
          return "O won in the second column - #{"middle_row_win"}"
          puts middle_row_win
    elsif board[third_column_win[2]] == "O" && board[third_column_win[5]] == "O" && board[third_column_win[8]] == "O"
          return "O won in the third column - #{"middle_row_win"}"
          puts middle_row_win
    elsif board[first_diagonal_win[0]] == "O" && board[first_diagonal_win[4]] == "O" && board[third_column_win[8]] == "O"
          return "O won in the first diagonal - #{"middle_row_win"}"
          puts first_diagonal_win
    else board[second_diagonal_win[2]] == "O" && board[second_diagonal_win[4]] == "O" && board[second_diagonal_win[6]] == "O"
          return "O won in the second diagonal - #{"second_diagonal_win"}"
          puts second_diagonal_win

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
