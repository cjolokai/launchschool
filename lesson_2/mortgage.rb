puts "Welcome to the mortgage calculator"


loop do # main Loop
  puts "What is your loan amount?"
  loan_amt = ''
  loop do
    loan_amt = gets.chomp
    if loan_amt.empty?() || loan_amt.to_f < 0
      puts "Please enter a valid number greater than 0"
    else 
      break
    end
  end 
  puts "What is your annual interest rate?"
  year_rate = '' 
  loop do
    year_rate = gets.chomp
    if year_rate.empty?() || year_rate.to_f < 0
      puts "Please enter a valid number greater than 0"
    else 
      break
    end
  end 

  puts "How many years is this loan going to be?"
  duration = ''
  loop do
    duration = gets.chomp
    if duration.empty?() || duration.to_f < 0
      puts "Please enter a valid number greater than 0"
    else 
      break
    end
  end 

  year_rate_adj = year_rate.to_f / 100
  mon_rate = year_rate_adj / 12
  duration_m = duration.to_i * 12
  monthly_payment = loan_amt.to_f * (mon_rate / (1 - (1 + mon_rate)**(- duration_m)))
  rounded = monthly_payment.round(2)

  puts "Your monthly payment will be $#{rounded}"
  puts "Would you like to see all the details? (Y or N)"
  ans = gets.chomp
  if ans.downcase.include?('y')
    puts  <<-MSG
    -------------------------------------------------
        Monthly Payment:    $#{rounded}
        Interest Rate:      %#{year_rate}
        Loan Amount:        $#{loan_amt}
        Term:               #{duration} years
    -------------------------------------------------
      MSG
  end
  puts "Would you like to do another calculation? (Y or N)"
  ans = gets.chomp
  break unless ans.downcase.include?('y')
end # End of Main Loop
puts "Thanks then! Good luck house hunting."