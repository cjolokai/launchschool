VALID_CHOICES = ["rock", "paper", "scissors", "lizard", "Spock",]

WINNING_SCENARIOS = {
                     "rock": ["scissors", "lizard"], 
                     "paper": ["rock", "Spock"], 
                     "scissors": ["paper", "lizard"],
                     "Spock": ["rock", "scissors"], 
                     "lizard": ["paper", "Spock"]
                     # 'rock'     =>   %w(scissors lizard),
                     # 'paper'    =>   %w(rock spock),
                     # 'scissors' =>   %w(paper lizard),
                     # 'spock'    =>   %w(rock scissors),
                     # 'lizard'   =>   %w(spock paper)
                   }
def letter_to_word(letter)
  if letter.downcase().start_with?("r")
    letter = "rock"
  elsif letter.downcase().start_with?('p')
    letter = 'paper'
  elsif letter.downcase().start_with?('s')
    puts "Do you mean Spock or Scissors?"
    puts "Enter 1 for scissors or 2 for Spock."
    letter = gets.chomp.to_i
    if letter == 1
     letter = "scissors"
    elsif letter == 2
      letter = "Spock"
    end  
  else 
    letter = "lizard"
  end
  puts "You chose #{letter}"
end  

def determine_winner(user, computer)   
  if WINNING_SCENARIOS[user].include?(computer)
    true
  elsif WINNING_SCENARIOS[computer].include?(player)
    false
  end
end 

# def determine_winner(user, computer)
#   if WINNING_SCENARIOS[user].include?(computer)
#     true

#   elsif WINNING_SCENARIOS[computer].include?(user)
#     false
#   end
# end

def show_results(win)
  if win
    puts "Winner!"
  elsif win == false
    puts "Loser!"
  else
    puts "It's a tie"
  end
end 

loop do # Main loop
  wins = 0
  losses = 0
  draws = 0
  choice = ''
  computer_choice = VALID_CHOICES.sample
  puts "Welcome to Rock, Paper, Scissors, Spock, Lizzard. Make a selection"
  choice = gets.chomp
  # if VALID_CHOICES.include?(choice)
  #   break
  # else
  #   puts "Not a valid selection. Try again"
  # end
  # result = determine_winner(choice, computer_choice)
  # show_results(result)

  if choice.downcase().start_with?("r")
    choice = "rock"
  elsif choice.downcase().start_with?('p')
    choice = 'paper'
  elsif choice.downcase().start_with?('s')
    puts "Do you mean Spock or Scissors?"
    puts "Enter 1 for scissors or 2 for Spock."
    choice = gets.chomp.to_i
    if choice == 1
     choice = "scissors"
    elsif choice == 2
      choice = "Spock"
    end  
  else 
    choice = "lizard"
  end

  puts "you chose #{choice}. the computer chose #{computer_choice}"

  winning_player = determine_winner(choice, computer_choice)
  show_results(winning_player)

  if winning_player
    wins = wins + 1
  elsif winning_player == false 
    losses = losses + 1
  else 
    draws = draws + 1
  end 
  
  puts '-------------------------------'
        puts 'Wins: #{wins}'
        puts 'Losses: #{losses}'
        puts 'Draws: #{draws}'
  puts '-------------------------------'           



end # Main Loop 