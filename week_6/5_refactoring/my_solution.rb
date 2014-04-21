# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].


# Original Solution

class CreditCard
  def initialize(num)
    @num = num
    @arr_num = num.to_s.split(//)
    if @arr_num.length != 16
      raise ArgumentError.new("Number must be 16 digits long")
    end
    @doubled = double_idx_even  
    @sum = sum
  end

  def double_idx_even  #changed method name
    cal = Array.new
    @arr_num.each_with_index {|x, index|
      if index.even?
        cal.push(x.to_i * 2)
      else
        cal.push(x.to_i)
      end
    }
  
    return cal   #arr with 16 elements (integers)
  end

  def sum
    cal = Array.new
    @doubled = @doubled.map {|x| x.to_s.split('')}   #arr with 16 subarr whose elem are strings

    @doubled = @doubled.each {|x|
      if x.length == 2
        cal.push(x[0].to_i + x[1].to_i)
      else
        cal.push(x[0].to_i)
      end
    }

    result = cal.inject {|sum, x| sum += x}    #cal = arr of 16  integers
    return result #70
  end

  def check_card
    if @sum % 10 
      return true
    else
      return false
    end
  end
end



# Refactored Solution

class CreditCard

	def initialize(num)
		@num = num
		raise ArgumentError.new("Wrong num") if num.to_s.length != 16
	end

	def check_card
		num_array = @num.to_s.split("")
		new_numbers = []

		num_array.each_with_index do |value, index|
			if index % 2 == 0
				new_value = value.to_i * 2
				new_value.to_s.split(//).each { |x| new_numbers << x.to_i}
			else
				new_numbers << value.to_i
			end
		end

			total_sum = new_numbers.inject{ |sum, num| sum + num }

			if total_sum % 10 == 0
				return true
			else
				return false
			end
	end
end




# DRIVER TESTS GO BELOW THIS LINE

card1 = CreditCard.new(4408041234567893)
p card1.check_card == true

card2 = CreditCard.new(4408041234567892)
p card2.check_card == false


# Reflection 

# I changed the whole code because there was so many unnecessary methos.