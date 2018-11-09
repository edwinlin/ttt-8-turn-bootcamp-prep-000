
def turn
  
greeting()
input = gets.strip.to_i
  if valid_move?(input)
    
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def greeting(name = "Player")
  puts "Hi, #{name}! Welcome to the wonderful world of Ruby programming. Choose a number from 1 to 9"
end

def valid_move?(board, move)
  if move < 0 || move > board.length-1 || position_taken?(board, move)
    return false
  else
    return true
  end
end

def position_taken?(board, desired_position)
  if [" ", "", nil].include?board[desired_position]
    return false
  end
  if ["X", "O"].include?board[desired_position]
    return true
  end
end

