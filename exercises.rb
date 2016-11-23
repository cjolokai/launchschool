#1 Use the each method of Array to iterate 
# over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and 
# print out each value.

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# arr.each do |num|
#   p num
# end 

#2 Same as above, but only print out values greater than 5.

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# arr.each do |num|
#   if num > 5
#     p num
#   end
# end 

#3 Now, using the same array from #2, use the
 # select method to extract all odd numbers 
 # into a new array.

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# n_arr = []
# arr.each do |num|
#   if num > 5
#     n_arr << num
#   end
# end 
# p n_arr

#4 Append "11" to the end of the original array. Prepend "0" to the beginning.

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# arr.push(11)
# arr.unshift(0)

#p arr

#5 Get rid of "11". And append a "3".
# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# arr.push(11)
# arr.unshift(0)

# p arr
# arr.pop
# arr.push(3)
# p arr

#6 Get rid of duplicates without specifically removing any one value.

# arr = [1, 2, 2, 2, 2, 3, 4, 4, 4, 4, 5, 6, 7, 8, 9, 9, 9, 10]

# p arr.uniq

#7 What's the major difference between an Array and a Hash?
# Key value pairs. Hashes have them, arrays don't 

#8 Create a Hash using both Ruby syntax styles.

# mariners = {firstbase: "Tino", 
#             secondbase: "Joey",
#             ss: "Alex",
#             thirdbase: "Mike"
# }
# of = {:rf => "Jay", 
#       :cf => "Jr",
#       :lf => "Vince"
# }

# p mariners
# p of

#9 Suppose you have a hash 
#h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.
#p h[:b]
# 2. Add to this hash the key:value pair `{e:5}`
#h[:e] = 5
#p h
# 3. Remove all key:value pairs whose value is less than 3.5
# h.delete_if {|k, v| v < 3.5}
# p h 

#10 Can hash values be arrays? Can you have an array of hashes? (give examples)

# mariners = [{infield: ["Tino", "Joey", "Alex", "Mike"]}, 
#             {outfield: ["Jr", "Jay", "vince"]}
#           ]

# hawks = {offence: ["Russel", "Jimmy", "Tyler"]}

#11 Look at several Rails/Ruby online API sources and say which one 
#you like best and why.

#I'm partial to the ruby-doc.org site. The reason is that its been my 
# primary source of support through all the exercises we have done in 
# this book. It is very easy to follow, and it provides a helpful look 
# and feel to know exactly what your looking at. 

#12 Given the following data structures. Write a program that moves 
# the information from the array into the empty hash that applies to the 
# correct person. 

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# contacts["Joe Smith"][:email] = contact_data.first.first
# contacts["Joe Smith"][:address] = contact_data[0][1]
# contacts["Joe Smith"][:phone] = contact_data[0][2]
# contacts["Sally Johnson"][:email] = contact_data.last.first
# contacts["Sally Johnson"][:address] = contact_data[1][1]
# contacts["Sally Johnson"][:phone] = contact_data[1][2]

# p contacts

#13 Using the hash you created from the previous exercise, 
# demonstrate how you would access Joe's email and Sally's 
# phone number?

# p contacts["Joe Smith"][:email]
# p contacts["Sally Johnson"][:phone]

#14 Now, programmatically loop or iterate over the contacts 
# hash from exercise 12, and populate the associated data from 
# the contact_data array. 

# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}
# fields = [:email, :address, :phone]

# contacts.each do |name, hash|
#   fields.each do |field|
#     hash[field] = contact_data.shift
#   end
# end

# p contacts

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
# fields = [:email, :address, :phone]

# contacts.each_with_index do |(name, hash), idx|
#   fields.each do |field|
#     hash[field] = contact_data[idx].shift
#   end
# end

# p contacts

#15 Use Ruby's Array method delete_if and String method start_with? 
#to delete all of the words that begin with an "s" in the following array.

# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if {|word| word.start_with?("s")}

# p arr

#16 Take the following array and turn it into a new array that consists 
#of strings containing one word.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
b = []
a.each do |word|
  b << word.split
end
p b.flatten

#17 What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# This program will print out "These hashes are the same!". They have the 
#same key value pairs, they were just put into the hashes differently.

#18 