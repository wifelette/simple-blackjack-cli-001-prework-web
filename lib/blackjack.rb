def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  range = 1..11
  rand(range)
end

def display_card_total(card_totes)
  puts "Your cards add up to #{card_totes}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(wat)
  puts "Sorry, you hit #{wat}. Thanks for playing!"
end

def initial_round
  zebra = deal_card + deal_card
  display_card_total(zebra)
  zebra
end

def hit?(old_total)
  prompt_user
  if get_user_input == "h"
    deal_card + old_total
  else
    old_total
  end
end

def invalid_command
  puts "Whoops! That's not valid."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end