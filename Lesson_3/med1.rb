# 1. For this exercise, write a one-line program that creates the following output 10 times,
# with the subsequent line indented 1 space to the right:
# The Flintstones Rock!
#10.times {|i| puts (" " * i) + "The Flinstones Rock!"}.

# 2. Create a hash that expresses the frequency with which each letter occurs in this string:
# statement = "The Flintstones Rock"
# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a
# letters.each do |letter|
#   count = statement.scan(letter).count
#   result[letter] = count if count > 0
# end 

# 3. The result of the following statement will be an error:
# puts "the value of 40 + 2 is " + (40 + 2)

# The reason the error message comes up is that the second part of the statement will return an integer
# and the first half of the statement is a string. So the code is trying to concat a string with an integer,
# which won't work. 

# num1 = 40
# num2 = 2
# sum = num1 + num2
# puts "The value of #{num1} + #{num2} is #{sum}" 
# #--------------------------------------

# puts "The value of 40 + 2 is #{40 + 2}"
# puts "The value of 40 + 2 is " + (40 + 2).to_s

# 4. What happens when we modify an array while we are iterating over it? What would be output by this code?
# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift()
# end

# 5. Alan wrote the following method, which was intended to show all of the factors of the input number:

# def factors(number)
#   dividend = number
#   divisors = []
#   begin
#     divisors << number / dividend if number % dividend == 0
#     dividend -= 1
#   end until dividend == 0
#   divisors
# end

# Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change
# the loop. How can you change the loop construct (instead of using begin/end/until) to make this work? 
# Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle 
# it gracefully instead of raising an exception or going into an infinite loop.

# def factors(n)
#   dividend = n
#   divisors = []
#   while dividend > 0
#     divisors << n / dividend if n % dividend == 0
#     dividend -= 1
#   end 
#   divisors
# end
# p factors(8)

# Bonus answer 1: this allows you to only include numbers that don't have a remainder
# Bonus answer 2: This functions as the return for the method. 

# 6. Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling 
# buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements 
# in the buffer.

# She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". 
# Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size >= max_buffer_size
#   buffer
# end

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size >= max_buffer_size
#   buffer
# end

# There is a difference. buffer is an input in the first method, and is modified as the method works. In the second
# one, the buffer is not changed. 

# 7. What's wrong with the code?

# limit = 15

# def fib(first_num, second_num, limit)
#   while second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1, 16)
# puts "result is #{result}"

# THere was no locally defined variable for limit. This can be solved by making limit an input for the method. 

# 8. Write your own version of the rails titleize implementation.

# words = "the flintstones rock"

# p words.split.map {|word| word.capitalize}.join(" ")
# words = "the flintstones rock"
# title = []
# words.split.each do |word|
#   title << word.capitalize!
# end

p title.join(" ")

# 9. Modify the hash such that each member of the Munster family has an additional "age_group" key that has 
# one of three values describing the age group the family member is in (kid, adult, or senior). Your solution 
# should produce the hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details['age']
  when 0...18
    details['age_group'] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details['age_group'] = "old"
  end 
end 

p munsters
