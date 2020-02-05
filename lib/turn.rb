
# MAIN METHOD
def turn
  ask_for_input()
  input = gets_input()
  index = input_to_index()
  if index <= 8
    move()
    display_board(index)
  end
end


# HELPER METHODS

# ask user for input
def ask_for_input
  puts "Hello, select a location for your move, 1-9"
end

# get user input
def gets_input
  input = gets.strip.to_i
end

# convert input to index
def input_to_index(input)
    index -= input
end

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

end



# display the board
def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end
