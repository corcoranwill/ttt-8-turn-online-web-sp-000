
def turn
  ask_for_input()
  input = gets_input()
  index = input_to_index()
  if index <= 8
    move()
    display_board(index)
  end
end

# ask for input
# get input
# convert input to index
# if index is valid
#   make the move for index
#   show the board
# else
#   ask for input again until you get a valid input
# end



# display_board
# input_to_index
# valid_move?
# move
# turn


def ask_for_input
  puts "Hello, select a location for your move, 1-9"
end

def gets_input
  input = gets.strip.to_i
end

def input_to_index(input)
    index -= input
end


def valid_move?(board, index)
  #if submitted index is present on the game board AND not already filled then return true
  if index >= 0 && index <= 8
    valid_position = position_taken?(board, index)
    if valid_position == false
      true
    end
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

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
