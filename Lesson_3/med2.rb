# 1. Figure out the total age of just the male members of the family.

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" }
# }

# total = 0
# munsters.each do |name, details|
#   total += details["age"] if details['gender'] == 'male'
# end 
# p total

# 2. Given this previously seen family hash, print out the name, age and gender of each family member:
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, details|
#   p "#{name} is a #{details["age"]} old #{details["gender"]}."
# end 
 # 3. How can we refactor this exercise to make the result easier to predict and easier for the 
 # next programmer to maintain?

#  def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# def not_as_tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param += ["rutabaga"]

#   return a_string_param, an_array_param
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = not_as_tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# 4. Use this technique to break up the following string and put it back together with the words in reverse order:

# sentence = "Humpty Dumpty sat on a wall."
# string = sentence.split(/\W/)
# p string.reverse!.join(" ") + "."

# 5. What is the output of the following code?

# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)

# p answer - 8

# It will return 34 because all that's being asked is to print the answer variable minus 8 which would be 34. 

# 6. Did the family's data get ransacked? Why or why not?

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# mess_with_demographics(munsters)

# Yes it did because the mess_with_demographics method calls the munsters hash. There isn't a new hash being populated 
# with the info. It's working directly with the Munsters hash

# 7. What is the result of the following call?

# 8. What would be the output of this code:

# def foo(param = "no")
#   "yes"
# end

# def bar(param = "no")
#   param == "no" ? "yes" : "no"
# end
# p bar(foo)

# This will return "no" because foo will  return "yes" != 'no' 
