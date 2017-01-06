VALID_CHOICES = ["rock", "paper", "scissors", "lizard", "Spock",]
choice = ''
computer_choice = VALID_CHOICES.sample

winning_scenarios = {"rock": ["scissors", "lizard"], 
                     "paper": ["rock", "Spock"], 
                     "scissors": ["paper", "lizard"],
                     "Spock": ["rock", "scissors"], 
                     "lizard": ["paper", "Spock"]}
wins = 0
losses = 0
draws = 0
def valid_choice?(word)
  if VALID_CHOICES.include?(word) == 'false'
    puts "Are you sure that's a valid choice?"
  end
end

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
  
def show_results(player, computer)
  if (player == "rock" && (computer == "scissors" || computer == "lizard")) ||
     (player == 'paper' && (computer == 'Spock' || computer == 'rock')) ||
     (player == 'scissors' && (computer == 'paper' || computer == 'lizard')) ||
     (player == 'lizard' && (computer == 'paper' || computer == 'Spock')) ||
     (player == 'Spock' && (computer == 'rock' || computer == 'scissors'))
    puts "You win"
  elsif
    (computer == 'rock' && (player == 'scissors' || player == 'lizard')) ||
    (computer == 'paper' && (player == 'Spock' || player == 'rock')) ||
    (computer == 'scissors' && (player == 'paper' || player == 'lizard')) ||
    (computer == 'lizard' && (player == 'paper' || player == 'Spock')) ||
    (computer == 'Spock' && (player == 'rock' || player == 'scissors'))
    puts "You lose"
  else 
    puts "Draw, try again"
  end
end 

def winner?(player, comp)
  if (player == "rock" && (comp == "scissors" || comp == "lizard")) ||
     (player == 'paper' && (comp == 'Spock' || comp == 'rock')) ||
     (player == 'scissors' && (comp == 'paper' || comp == 'lizard')) ||
     (player == 'lizard' && (comp == 'paper' || comp == 'Spock')) ||
     (player == 'Spock' && (comp == 'rock' || comp == 'scissors'))
    wins += 1
  elsif
     (comp == 'rock' && (player == 'scissors' || player == 'lizard')) ||
     (comp == 'paper' && (player == 'Spock' || player == 'rock')) ||
     (comp == 'scissors' && (player == 'paper' || player == 'lizard')) ||
     (comp == 'lizard' && (player == 'paper' || player == 'Spock')) ||
     (comp == 'Spock' && (player == 'rock' || player == 'scissors'))
    loses += 1
  else 
    draws += 1
  end
end 


# def play_again?(ans)
#   puts "Do you want to play again?"
#   ans = gets.chomp
#   break unless ans.downcase().start_with?('y')
# end
loop do #main loop

  loop do # choice loop
    puts "Welcome to Rock, Paper, Scissors, Lizard, Spock. Please make a selection"
    
    choice = gets.chomp
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
    elsif choice.downcase().start_with?('l') 
      choice = "lizard"
    end
    
    if VALID_CHOICES.include?(choice)
      break
    else
      puts "Not a valid selection. Try again"
    end 
  end # choice Loop
  show_results(choice, computer_choice)
  puts "You put #{choice}. The computer put #{computer_choice}"
  winner?(choice, computer_choice)
  puts <<-MSG
        -------------------------------
        Wins: #{wins}
        Losses: #{losses}
        Draws: #{draws}
        -------------------------------
        MSG
  puts "Would you like to go again? (Y or N)"
  ans = gets.chomp
  break unless ans.downcase.start_with?('y')
end # Main Loop
 puts "Thanks for playing!"