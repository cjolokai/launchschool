# 1. Show an easier way to write this array:
#flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
#flintstones = %w[Fred Barney Wilma Betty BamBam Pebbles]

# 2. How can we add the family pet "Dino" to our usual array:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"

# 3. In the previous exercise we added Dino to our array like this:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"
# How can we add multiple items to our array? (Dino and Hoppy)
#flintstones.push("Dino").push('Hoppy')

# 4. Shorten this sentence
# advice = "Few things in life are as important as house training your pet dinosaur."
# advice.slice!(0, advice.index('house'))

# 5. Write a one-liner to count the number of lower-case 't' 
# characters in the following string:
# statement = "The Flintstones Rock!"
# p statement.count "t"

# 6. How could we easily center that title above the table with spaces?

title = "Flintstone Family Members"
p title.center(40)