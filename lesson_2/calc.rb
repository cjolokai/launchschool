# ask the user for two numbers
# ask the user for an operation to perform
# do the action
# output the result

# ans = gets()
# puts(ans)

require 'yaml'
MESSAGES = YAML.load_file('messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end
# def val_num?(num)
#   num.to_i != 0
# end
def integer?(input)
  Integer(input) rescue false
end
def float?(input)
  Float(input) rescue false
end
def operation_to_message(op)
  case op
    when "1"
      "Adding"
    when "2"
      "Subtracting"
    when "3"
      "Multiplying"
    when "4"
      "Dividing"
  end 
end 

prompt(MESSAGES["welcome"])
name = ''

loop do 
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end 

prompt("Hi #{name}!")

loop do #main loop
  ans_1 = ''

  loop do
  prompt(MESSAGES["first_num"])
  ans_1 = Kernel.gets().chomp()

    if integer?(ans_1)
      break
    else
      prompt(MESSAGES["valid_name"])
    end
  end

  ans_2 = ''

  loop do
  prompt(MESSAGES["second_num"])
  ans_2 = Kernel.gets().chomp()

    if integer?(ans_2)
      break
    else
      prompt(MESSAGES["not_val_num"])
    end
  end

  opperator_nums = ['1', '2', '3', '4']


  opperator_prompt = <<-MSG 
What are you trying to do? 
    1. Add
    2. Subtract
    3. Multiply
    4. Divide
  MSG

prompt(opperator_prompt)

  opp = ''
  loop do 

    opp = Kernel.gets().chomp()
  
    if opperator_nums.include?(opp)
      break
    else
      prompt("enter 1, 2, 3, 4")
    end
  end

prompt("#{operation_to_message(opp)} the two numbers...")

  result = case opp
      when '1'
        ans_1.to_i() + ans_2.to_i()
      when '2'
        ans_1.to_i() - ans_2.to_i()
      when '3'
        ans_1.to_i() * ans_2.to_i()
      when '4'
        ans_1.to_f() / ans_2.to_f()
  end



  p "The answer is #{result}"
  p MESSAGES['another?']
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end
  prompt("Thanks")
