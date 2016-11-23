#1 Given a hash of family members, with keys 
# as the title and an array of names as the 
# values, use Ruby's built-in select method to 
# gather only immediate family members' names 
# into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

imm_fam = family.select do |k, names|
  k == :sisters || k == :brothers
end 

n_arr = imm_fam.values.flatten
p n_arr

#2 Look at Ruby's merge method. Notice that it 
# has two versions. What is the difference between 
# merge and merge!? Write a program that uses both 
# and illustrate the differences.

# mariners = {firstbase: "Tino", 
#             secondbase: "Joey", 
#             thirdbase: "Mike", 
#             shortstop: "Alex"
#           }
# outfield = {cf: "Jr", 
#             lf: "Vince",
#             rf: "Jay"
#           }
# p "--------------------"
# p mariners.merge(outfield)
# p "--------------------"
# p mariners
# p outfield
# p "--------------------"
# p mariners.merge!(outfield)
# p "--------------------"
# p mariners
# p outfield
# p "--------------------"

#3. Using some of Ruby's built-in Hash methods, 
# write a program that loops through a hash and 
# prints all of the keys. Then write a program 
# that does the same thing except printing the 
# values. Finally, write a program that prints both.

# teams = {epl: "Arsenal", 
#       nfl:  "Seahawks",
#       mlb_al: "M's", 
#       mlb_nl: "Cubs",
#       nhl: "Redwings"
#        }
# teams.each do |k, v|
#   p k
# end
# teams.each do |k, v|
#   p v
# end
# teams.each do |k, v|
#   p "#{k}---------#{v}"
# end

#4 Given the following expression, how would you 
#access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person[:name]

#5. What method could you use to find out if a 
# Hash contains a specific value in it? Write a program 
# to demonstrate this use.

nums = {seattle: "Seahawks",
        san_fran: "49ers",
        ari: "Cardinals",
        la: "Rams"
}

if nums.has_value?("Seahawks")
  puts "yeah"
else 
  puts "no"
end

#6.Write a program that prints out groups of words that 
# are anagrams. Anagrams are words that have the same 
# exact letters in them but in a different order. 

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word| 
  key = word.split("").sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end 

result.each do |k, v| 
  p "................"
  p v
  p "................"
end 

#7. What's the difference between the two hashes that were created?

# x = "hi there"
# my_hash = {x: "some value"}
# my_hash2 = {x => "some value"}

# The first one uses the character x as the key, the second one 
# uses the variable value of x as the key. 

#8 If you see this error, what do you suspect is the most likely problem?
# NoMethodError: undefined method `keys' for Array

#B. There is no method called keys for Array objects.