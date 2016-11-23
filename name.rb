puts "What is your name?"
name = gets.chomp 
puts "Hello #{name}. Welcome to my world"

#3 Add another section onto name.rb that prints the name 
# of the user 10 times. You must do this without explicitly 
#   writing the puts method 10 times in a row. Hint: you can 
#   use the times method to do something repeatedly.

10.times do
  puts name
end

#4 Modify name.rb again so that it first asks the user for 
# their first name, saves it into a variable, and then does 
# the same for the last name. Then outputs their full name 
# all at once.

puts "what is your first name?"
f_name = gets.chomp
puts "got it, your first name is #{f_name}"
puts "what is your last name?"
l_name = gets.chomp
puts "good, your whole name is #{f_name} #{l_name}"

#5 Look at the following programs...What does x print to 
# the screen in each case? Do they both give errors? Are 
# the errors different? Why?

# x = 0
# 3.times do
#   x += 1
# end
# puts x
# x will print 3 because it is declared as a var outside of the 
# do block

# y = 0
# 3.times do
#   y += 1
#   x = y
# end
# puts x
# this should throw an error because x is declared inside the block

#6 What does the following error message tell you?
# NameError: undefined local variable or method `shoes' for main:Object
#   from (irb):3
#   from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
#This error tells me that shoes isn't defined properly in the code.  