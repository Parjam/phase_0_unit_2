# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

$boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution

 def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
 end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p create_word($boggle_board,[2,1],[3,1],[3,2],[3,3]) == "cake"

# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Initial Solution

def get_row(row)
    $boggle_board[row]
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p get_row(1) == ["i", "o", "d", "t"]

# Reflection 

# I had a challenge to make boggle_bord work until I realized that I have to make the hash global variable to be able to access it.

#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution

def get_col(col)
    array = []
    $boggle_board.length.times do |row|
    	array << $boggle_board[row][col]
    	row += 1
    end
    return array
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p get_col(1) == ["r","o","c","a"]

# Reflection 