# 1
#Add two strings together that, when concatenated, 
#return your first and last name as your full name in one string.

"Chris" + "Jolokai"

#2 Use the modulo operator, division, or a combination of both to 
#take a 4 digit number and find the digit in the:
  # 1) thousands place 
123456 / 1000
  # 2) hundreds place
123456 % 1000 / 100
  # 3) tens place 
123456 % 1000 % 100 /10
  # 4) ones place
123456 % 1000 % 100 % 10

#3 Write a program that uses a hash to store a list of movie titles 
# with the year they came out. Then use the puts command to make your 
# program print out the year of each movie to the screen. The output 
# for your program should look something like this.

movies = {the_Room: 2003,
          idiocracy: 2006,
          ironMan: 2008, 
          splash: 1984,
          the_Lion_King: 1994
}

movies.each do |k, v|
  puts v
end

#4 Use the dates from the previous example and store them in an array.
# Then make your program output the same thing as exercise 3.

movies = {the_Room: 2003,
          idiocracy: 2006,
          ironMan: 2008, 
          splash: 1984,
          the_Lion_King: 1994
}
arr = []
movies.each do |k, v|
  arr << v
end
p arr

#5 Write a program that outputs the factorial of the numbers 5, 6, 7, and 8

puts 1*2*3*4*5
puts 1*2*3*4*5*6
puts 1*2*3*4*5*6*7
puts 1*2*3*4*5*6*7*8

#6 Write a program that calculates the squares of 3 float numbers of your 
#choosing and outputs the result to the screen.

puts 3.14 * 3.14
puts 7.89 * 7.89
puts 14.53214 * 14.53214

# 7 What does the following error message tell you?
# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#   from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

#It's telling me that there is an apostraphe where a squiggly bracket should be. This is probably 
#somebody trying to work with a hash and they put the wrong thing there. 