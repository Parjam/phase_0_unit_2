# U2.W4: Homework Cheater


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: some info
# Output: an essay
# Steps:putting the words in right position 


# 3. Initial Solution

def book_report(book_title,topic,author,date)
	@book_title = book_title
	@topic = topic
	@author = author
	@date = date.to_s
  puts "#{book_title}, is a extraordinary book about #{topic}. #{author} wrote this magnificent work in #{date}. I had a terrific time reading it, and I suggest you do the same. I learned a lot from it, specially on How to Cheat!"
end


# 4. Refactored Solution


def book_report(book_title,topic,author,date)
	@book_title = book_title
	@topic = topic
	@author = author
	@date = date.to_s
  puts "#{book_title}, is a extraordinary book about #{topic}. #{author} wrote this magnificent work in #{date}. I had a terrific time reading it, and I suggest you do the same. I learned a lot from it."
end



# 1. DRIVER TESTS GO BELOW THIS LINE

book_report("The Call of the Wild","The journey of a pet dog in the wild","Jack London",1903) == The Call of the Wild, is a extraordinary book about The journey of a dog in the wild. Jack London wrote this magnificent work in 1903. I had a terrific time reading it, and I suggest you do the same. I learned a lot from it.




# 5. Reflection 

# I made a book report cheater.