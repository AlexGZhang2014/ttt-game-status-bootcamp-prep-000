# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    windex_1 = combo[0]
    windex_2 = combo[1]
    windex_3 = combo[2]
    position_1 = board[windex_1]
    position_2 = board[windex_2]
    position_3 = board[windex_3]
    if position_1 == "X" && position_2 = "X" && position_3 == "X"
      return combo
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return combo
    end
  end
  return false
end

def full?(board)
  final_board = board.select {|element| element == "X" || element == "O"}
  if final_board.length == 9
    return true
  else
    return false
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board) == ["X", "X", "X"]
    return "X"
  elsif won?(board) == ["O", "O", "O"]
    return "O"
  else
    return false
  end
end