# 1. In this hash of people and their age, see if "Spot" is present.
# Bonus: What are two other hash methods that would work just as well 
# for this solution?
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# p ages.include?("Spot")
# p ages.has_key?("Spot")
# p ages.key?("Spot")

# 2. Add up all of the ages from our current Munster family hash:
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
#  "Marilyn" => 22, "Spot" => 237 }

# p ages.values.inject(:+)

# 3. In the age hash, throw out the really old people (age 100 or older).
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.delete_if {|k, v| v >= 100}
# p ages

# 4. Starting with this string:
# munsters_description = "The Munsters are creepy in a good way."

# Convert the string in the following ways (code will be executed on original munsters_description above):

# "The munsters are creepy in a good way."
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# munsters_description = "The Munsters are creepy in a good way."

# p munsters_description.capitalize
# p munsters_description.swapcase
# p munsters_description.downcase
# p munsters_description.upcase

# 5. We have most of the Munster family in our age hash, add ages for Marilyn and Spot to the existing hash

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# ages.merge!(additional_ages)
# p ages

#6. Pick out the minimum age from our current Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, 
        "Marilyn" => 22, "Spot" => 237 }

p ages.values.min

# 7. See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.match("Dino")

# 8. In the array, find the index of the first name that starts with "Be"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |n, idx|
  if n.start_with?("Be")
    p idx
  end 
end 

# 9. Using array#map!, shorten each of these names to just 3 characters:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |n| 
  n[0, 3]
end

# 10. Same as before, but on one line
flintsotnes.map! {|n| n[0, 3]}