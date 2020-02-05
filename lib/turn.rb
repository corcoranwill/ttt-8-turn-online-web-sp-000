
# MAIN METHOD
def turn
  move()
  display_board(index)
end


# HELPER METHODS

# determine if move provided is a valid board location
def valid_move?(board, index)
  if index >= 0 && index <= 8
    valid_position = position_taken?(board, index)
    if valid_position == false
      true
    end
  end
end

# determine if the position is taken
def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || "O"
    true
  end
end


def move(array, index, value = "X")
  update_array_at_with(array, index, value)
end

def update_array_at_with(array, index, value)
  array[index] = value
end


# display the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



# convert input to index
def input_to_index(input)
    index -= input
end
