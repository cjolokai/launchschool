#1 What does the each method in the following 
#program return after it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

[1, 2, 3, 4, 5]

#2 Write a while loop that takes input from the 
#user, performs an action, and only stops when 
#the user types "STOP". Each loop can get info 
#from the user.

# x = ""
# while x != "stop"
#   puts "Hey what's up?"
#   response = gets.chomp
#   puts "Do you want to continue"
#   x = gets.chomp
# end

#3 Use the each_with_index method to iterate 
#through an array of your creation that prints 
#each index and value of the array.

# teams = ["Arsenal", "Seahawks", "M's", "Cubs", "Sonics"]

# teams.each_with_index do |k, v|
#   puts "#{v + 1}. #{k}"
# end

#4. Write a method that counts down to zero using recursion.

def recur(num)
  if num <= 0
    puts num
  else 
    puts num
    recur(num -1)
  end
end

recur(10)
recur(-18)
recur(25)