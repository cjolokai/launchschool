#1. Write a program that checks if the sequence of 
# characters "lab" exists in the following strings. 
# If it does exist, print out the word.

def lab(word)
  if word =~ /lab/
    puts word
  else 
    puts "nope"
  end
end 

lab("laboratory")
lab("experiment")
lab("Pans Labyrinth")
lab("elaborate")
lab("polar bear")

#2 What will the following program print to the 
#screen? What will it return?

# def execute(&block)
#   block
# end

# execute { puts "Hello from inside the execute method!" }

#Nothing will display because call is never invoked 

#3 What is exception handling and what problem does it solve?
#Exception handling is a process to handle errors in a given code.
#It is accomplished through using the word rescue. 
 
#4 Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

#5 Why does the following code Give us the following error when we run it?

# def execute(block)
#   block.call
# end

# execute { puts "Hello from inside the execute method!" }

# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

#There is no & to delineate "block" as a block. 