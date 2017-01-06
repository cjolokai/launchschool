 


puts "Welcome to Loan Calculator..."
puts "are you ready to be depressed when you find out how little you qualify for?"  

loop do
  puts "what is your loan amount?"
  
  loan_amt = ''
  loop do
    loan_amt = gets.chomp
    if loan_amt.empty?() || loan_amt.to_f() < 0
      puts "Enter a number greater than zero."
    else 
      break
    end
  end 

  puts "Got it, what is your Interest Rate?"
  apr = ''
  loop do
    apr = gets.chomp
    if apr.empty?() || apr.to_f() < 0
      puts "Enter a number greater than zero, unless you got a zero % rate...which would be amazing"
    else 
      break
    end
  end 

  puts "Ok, how many years is this loan?"
  
  duration_y = ''
  loop do
    duration_y = gets.chomp
    if duration_y.empty?() || duration_y.to_f() < 0
      puts "Enter a number greater than zero."
    else 
      break
    end
  end 


  
  duration_m = duration_y.to_i * 12
  interest_rate = apr * 100
  mon_int = interest_rate / 12
  monthly_payment = loan_amt.to_f * (mon_int.to_f / (1 - (1 + mon_int) ** (- duration_m.to_i)))

  puts "Your monthly payment will be #{monthly_payment}"
  puts "Would you like to do another calculation? (Y or N)"
  answer = gets.chomp
  break unless answer.downcase().include?("y")
end

puts "Thanks then!"

puts "Welcome to the mortgage calculator"

puts "What is your loan amount?"
loan_amt = gets.chomp.to_f

puts "What is your annual interest rate?"
year_rate = gets.chomp.to_f / 100

puts "How many years is this loan going to be?"
duration = gets.chomp.to_f

mon_rate = year_rate / 12
duration_m = duration * 12

monthly_payment = loan_amt * (mon_rate / (1 - (1 + mon_rate)**(- duration_m)))


puts "For a loan amount of #{loan_amt}, an interest rate of #{year_rate}, your payment is #{monthly_payment} over #{duration} years."