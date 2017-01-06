# 1. What would you expect the code below to print out?

# numbers = [1, 2, 2, 3]
# numbers.uniq
# puts numbers

# The code should just print out the full array 1, 2, 2, 3 
#because using the .uniq method does not mutate the array

# 2. Describe the difference between ! and ? in Ruby. 
# And explain what would happen in the following scenarios:

    #1. what is != and where should you use it?
    # This is not equals, and you would use it wherever you
    # need to use "not equals" 
    #2. put ! before something, like !user_name
    # Putting a bang before something forces it into a boolean context
    #3. put ! after something, like words.uniq!
    # Putting an ! after something will mutate whatever you're 
    # referencing. For instance in the code from #1, using .uniq! will 
    # print out only uniq values from the numbers array because .uniq! 
    # mutates the array. 
    #4. put ? before something
    # is used as a conditional operator
    #5. put ? after something
    # nothing...it's part of a the name
    #6. put !! before something, like !!user_name
    # This will put something into a boolean context and then will also negate
    # it again

# 3. Replace the word "important" with "urgent" in this string. 
# advice = "Few things in life are as important as house training your pet dinosaur."

# n_arr = advice.split

# n_arr.delete_if {|word| word == "important"}
# n_arr.insert(6, "urgent")
# p n_arr

# 4. What do the following method calls do (assume we reset numbers to the 
# original array between method calls)?
# numbers = [1, 2, 3, 4, 5]
# numbers.delete_at(1) -- This would delete the number at index 1, which would
# be 2
# numbers.delete(1) -- This would delete the number 1 from the array

# 5. Programmatically determine if 42 lies between 10 and 100.
#p (10..100).include?(42)

# 6. Starting with the string:
# famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.

#-------------------------------------
# pre = "Four score, and "
# famous_words = "seven years ago..."

# puts pre + famous_words
# #-------------------------------------
# p "Four score, and " << famous_words = "seven years ago..."

# 7. 42

# 8. If we build an array like this:
# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array:
# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# flintstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# p flintstones.flatten

# 9. Given the hash below
# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, 
#   "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: 
# Barney's name and Barney's number

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

p flintstones.assoc("Barney")

# 10. Given the array below
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the names are the keys and 
# the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = {}
flintstones.each_with_index do |n, idx|
  hash[n] = idx + 1
end 
p hash
