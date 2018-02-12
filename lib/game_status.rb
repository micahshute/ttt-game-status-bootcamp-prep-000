# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],
                    [3,4,5],
<<<<<<< HEAD
                    [6,7,8],
                    [0,3,6],
                    [1,4,7],
                    [2,5,8],
                    [0,4,8],
                    [2,4,6]]
=======
                    [6,7,8]
                    ]
def get_combos(numRows, numCols)
  combos = [[]]
  combo = []
  numCols.times do 
    
end

>>>>>>> ce5e15c8ab3624b23db3850f6a6916bd0159ba72


def get_locations(board, player = "X")
  locations = []
  location = 0 
  while(location < 9) do
    if board[location].strip == player.strip
      locations << location
    end
    location += 1 
  end
  return locations
end

def won?(board) 
  x_locations = get_locations(board)
<<<<<<< HEAD
  y_locations = get_locations(board, "O")
  locations = [x_locations,y_locations]
  WIN_COMBINATIONS.each do |combination|
    locations.each do |location|
      win = location.detect{|a| a == combination[0]} != nil && location.detect{|a| a == combination[1]} != nil && location.detect{|a| a == combination[2]} != nil
      # puts(combination[0])
      # puts(location.detect{|a| a == combination[0]})
      if win then
        return combination
      end
    end
  end
  return FALSE
end


def full?(board)
  return board.detect{|a| a == " " || a == "" || a == nil} == nil
end

def draw?(board)
  return !(won?(board)) && (full?(board))
end

def over?(board)
  return draw?(board) || won?(board) || full?(board)
end

def winner(board)
  winLocation = won?(board)
  return winLocation ? ((get_locations(board).detect{|a| a == winLocation[0]} != nil && get_locations(board).detect{|a| a == winLocation[1]} != nil && get_locations(board).detect{|a| a == winLocation[2]} != nil) ? "X" : "O")  : nil
end

=======
  y_locations = get_locaitons(board, "Y")
  
>>>>>>> ce5e15c8ab3624b23db3850f6a6916bd0159ba72
