# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself].


# 2. Pseudocode



# 3. Initial Solution

class BoggleBoard

 def initialize (boggle_board)
 	@boggle_board = boggle_board
 end
 
 def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
 end

 def get_row(row)
    @boggle_board[row].join("")
 end

 def get_col(col)
    array = []
    @boggle_board.length.times do |row|
    	array << @boggle_board[row][col]
    	row += 1
    end
    return array.join("")
 end
 
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution



# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:

p boggle_board.create_word(dice_grid, [1,2],[1,1],[2,1],[3,2]) == "dock"
p boggle_board.get_row(0) == "brae"
p boggle_board.get_row(1) == "iodt"
p boggle_board.get_row(2) == "eclr"
p boggle_board.get_row(3) == "take"
p boggle_board.get_col(0) == "biet"
p boggle_board.get_col(1) == "roca"
p boggle_board.get_col(2) == "adlk"
p boggle_board.get_col(3) == "etre"

# 5. Reflection 

# I just used join to make strings intead of returning arrays. also changed boggle_board from global variable to instance variable. Had no idea how to make it read boggle_board diagonal.