# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    
    original_sentence = sentence.downcase
    encoded_sentence = []
    original_sentence.each_char do |element|
      if cipher.include?(element)
        encoded_sentence << cipher[element]
      elsif element == ' '
        encoded_sentence << spaces.sample
      else 
        encoded_sentence << element
      end
     end
    
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing? Returns an array representation of object.
# 2. How does the rotate method work? What does it work on?  In rotates the elements of the Alphabet array four times.
# 3. What is `each_char` doing? Passes each character in original sentence to the given block
# 4. What does `sample` do? It chooses a random element (symbol) from spaces array.
# 5. Are there any other methods you want to understand better? No
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse? Using built-in methods like rotate is better. Our original code is shorter.
# 7. Is this good code? What makes it good? What makes it bad? Yeah it is a good and clean code. Using ruby built-in methods makes it good. Not having comments for what is doing, makes it bad.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time? No. The spaces return different symbol each time.
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 

