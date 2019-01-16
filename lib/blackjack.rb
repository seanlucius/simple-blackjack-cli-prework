def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(bust_total)
  puts "Sorry, you hit #{bust_total}. Thanks for playing!"
end

def initial_round
  first_deal = deal_card
  second_deal = deal_card
  card_sum = first_deal + second_deal
  display_card_total(card_sum)
  return card_sum
end

def hit?(current_card_total)
  prompt_user
  decision = get_user_input
  if decision == 'h'
    current_card_total += deal_card
    elsif decision == 's'
    current_card_total
    else
    invalid_command
    prompt_user
  end 
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  hand_total = initial_round
  until hand_total > 21
    hit?(hand_total)
    display_card_total(hand_total)
  end 
  end_game(hand_total)
end