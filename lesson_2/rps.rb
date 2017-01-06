VALID_CHOICES = ["rock", "paper", "scissors", "lizard", "Spock",]
wins = 0
losses = 0
draws = 0
def test_method
  prompt('test message')
end

def prompt(msg)
  puts ("message")
end

def show_results(player, computer)
  if (player == 'rock' && (computer == 'scissors' || computer == 'lizard')) ||
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

# def show_score
#   wins = 0
#   losses = 0
#   draws = 0
#   if show_results == "You win"
#     wins = wins + 1
#   elsif show_results == "You lose"
#     losses = losses + 1
#   else
#     draws = draws + 1
#   end 
#   puts <<-MSG
#   -----------------------
#       Wins: #{wins}
#       Losses: #{losses}
#       Draws: #{draws}
#   -----------------------
#   MSG
# end

loop do
  choice = ''

  loop do
    puts "Make a choice: rock, paper, scissors, lizzard, Spock."
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
    else 
      choice = "lizard"
    end
    if VALID_CHOICES.include?(choice)
      break
    else
      puts "Do you not know how this game works?"
    end
  end

  computer_choice = VALID_CHOICES.sample

  show_results(choice, computer_choice)

  puts "You put #{choice}. The comptuer put #{computer_choice}"
  #show_score()
  puts "Do you want to play again?"
  ans = gets.chomp
  break unless ans.downcase().start_with?('y')
end
puts "Thank you for playing."