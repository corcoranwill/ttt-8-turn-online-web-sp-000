
# MAIN METHOD
def turn(board, index)
  puts "Welcome to Tic Tac Toe!"
  puts "Where would you like to move?"
  input = gets.strip
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

  index = input_to_index(input)
  turn(board, index)
  

  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  end
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


def move(board, index, value = "X")
  update_array_at_with(board, index, value)
end

def update_array_at_with(board, index, value)
  board[index] = value
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
  input = input.to_i
  puts input
  index = input-1
end
