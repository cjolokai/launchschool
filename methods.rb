#Exercises

#1. 
def greeting(name)
  puts "Hello #{name}, glad to meet you. What's up?" 
end

puts greeting("larry")
puts greeting("Harold")
puts greeting("Tim")

#2. What do the following expressions evaluate to?
# 1. x = 2
#Sets a variable called x to 2. Returns 2
# 2. puts x = 2
#Returns nil
# 3. p name = "Joe"
#Returns Joe
# 4. four = "four"
#Returns four
# 5. print something = "nothing"
#Returns nil

#3. Write a program that includes a method called 
#multiply that takes two arguments and returns the 
#product of the two numbers.

def multiply(x, y)
  puts x * y
end

multiply(2, 3)
multiply(4.567, 8)
multiply(-56, 230)

# 4. What will the following code print to the screen?
# def scream(words)
#   words = words + "!!!!"
#   return
#   puts words
# end

# scream("Yippeee")
# This will not output anything because of the return in the middle of the method. 

#5. 1) Edit the method in exercise #4 so that it does print words on the screen. 
    #2) What does it return now?

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

# it should return Yippeee!!!! It still returns nil

#6. What does the following error message tell you?
# ArgumentError: wrong number of arguments (1 for 2)
#   from (irb):1:in `calculate_product'
#   from (irb):4
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

#It tells me that there are the wrong number of arguments in a given method. 
#There was only one input when there should be two

