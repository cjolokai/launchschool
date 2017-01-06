# 1. What do you expect to happen when the greeting variable is referenced in the last line of the code below?
# if false
#   greeting = “hello world”
# end

# greeting

# I would expect to get an error saying that greeting isn't defined, but I have a feeling that since this is the
# hard section, that there is a catch. 

# 2. What is the result of the last line in the code below?

# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]
# informal_greeting << ' there'

# puts informal_greeting  #  => "hi there"
# puts greetings

# I would expect that the result of the last line would be "hi there", because we are using << which will modify 
# whatever is calling it 

# 3. What will be printed by each of these code groups?

# def mess_with_vars(one, two, three)
#   one = two
#   two = three
#   three = one
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# I would expect that it would say "one is: one", "two is: two", "three is: three"

# def mess_with_vars(one, two, three)
#   one = "two"
#   two = "three"
#   three = "one"
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# I would expect that it would say "one is: one", "two is: two", "three is: three"

# def mess_with_vars(one, two, three)
#   one.gsub!("one","two")
#   two.gsub!("two","three")
#   three.gsub!("three","one")
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# I would expect it to say "one is: two" "two is: three" "three is: one" because you're using gsub in
# the method

# 4. Write a method that returns one UUID when called with no parameters.

# def create_uuid()
#   char = []
#   letters = ('a'..'f').each {|digit| char << digit}
#   num = (0..9).each {|digit| char << digit.to_s}

#   uuid = ''
#   sections = [8, 4, 4, 4, 12]
#   sections.each_with_index do |section, idx|
#     section.times {uuid += char.sample}
#     uuid += '-' unless idx >= sections.size - 1
#   end
#   p uuid
# end 

# create_uuid

# 5. 

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

dot_separated_ip_address(192.168.1.1)