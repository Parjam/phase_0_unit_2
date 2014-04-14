# U2.W5: Bakery Challenge GPS
    
    # U2.W5: The Bakery Challenge (GPS 2.1)
    
    # Your Names
    # 1) Parjam Davoody
    # 2) Christiane Kammerl
    
    # Initial Code:
    
    # This is the file you should end up editing.

=begin
    
    def bakery_num(num_of_people, fav_food) # method bakery_num takes two parameters, an integer and a string
    my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #It's a hash containing list of foods,  three key-value pairs
    pie_qty = 0 #varialbe pie quantity which is set equal to 0
    cake_qty = 0 # var cake quantity, set equal to 0
    cookie_qty = 0 #var cookies quantity, set equalt to 0
    
    has_fave = false # the parameter has_fave is set eql to false
    
    my_list.each_key do |k| #looks at each key (string) of the hash my_list and does the following..
        if k == fav_food # checking each key if it eql fav_food (string)
            has_fave = true # bolean value of has_fave changes to true
            fav_food = k # the hash key is fav food
        end
    end
    if has_fave == false # if fav food (bakery_num argument) doesnt match the hash key
        raise ArgumentError.new("You can't make that food") # then raise this argument error with this message.
        else
        fav_food_qty = my_list.values_at(fav_food)[0] # getting the value of fav_food_qty out of the hash (my_list) using the method values_at;
        if num_of_people % fav_food_qty == 0 #checks whether parameter num_of_people is divisible by fav_food_qty without any rest
            num_of_food = num_of_people / fav_food_qty # if true, then devide num_of_people by fav_food_qty
            return "You need to make #{num_of_food} #{fav_food}(s)." # if true, then return this message with num_of_food and fav_food.
            else num_of_people % fav_food_qty != 0 #checks whether parameter num_of_people is not divisible by fav_food_qty without any rest
            while num_of_people > 0 #while num_of_people is a positive integer
                if num_of_people / my_list["pie"] > 0 # checks whether num_of_people divided by the value of the key "pie" is positive
                    pie_qty = num_of_people / my_list["pie"] #if true, divide num_of_people by value of the key "pie"
                    num_of_people = num_of_people % my_list["pie"] # set num_of_people eql to remainder of modulo division of num_of_people and value of key "pie"
                    elsif num_of_people / my_list["cake"] > 0 # checks whether num_of_people divided by the value of the key "cake" is positive
                    cake_qty = num_of_people / my_list["cake"] #if true, divide num_of_people by value of the key "cake"
                    num_of_people = num_of_people % my_list["cake"] # set num_of_people eql to remainder of modulo division of num_of_people and value of key "cake"
                    else
                    cookie_qty = num_of_people # set cookie_qty equal to _num_of_people
                    num_of_people = 0 # default value for num_of_people is set to zero
                end
            end
            return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)." # return a string that shows the quantity of all keys
        end
    end
end

=end
 
# Refactored Code:

def bakery_num(num_people, fav_food)
my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}

cookie_qty = 0
quantity = 0

if my_list.has_key?(fav_food) == false
    raise ArgumentError.new("You can't make that food")
    else
    fav_food_qty = my_list.values_at(fav_food)[0]
    if num_people % fav_food_qty == 0
        num_food = num_people / fav_food_qty
        return "You need to make #{num_food} #{fav_food}(s)."
        else
        while num_people > 0
            if num_people / my_list.values_at(fav_food)[0] > 0
                quantity = num_people / my_list.values_at(fav_food)[0]
                num_people = num_people % my_list.values_at(fav_food)[0]
                else
                cookie_qty = num_people
                num_people = 0
            end
        end
        return "You need to make #{quantity} #{fav_food}(s), and #{cookie_qty} cookie(s)."
    end
end
end

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working.
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError
p bakery_num(41, "cake") == "You need to make 6 cake(s), and 5 cookie(s)."




#  Reflection 

# We changed the driver codes and made it better so the last code would work. We couldn't find any other way to do it.
