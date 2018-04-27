require './lib/game'



def start_game(game)
  puts 'Guess a number between 1 to 100. Type Hint, for a hint, type Cheat to cheat'
  guess = gets.chomp
  until guess.to_i == game.number
    if guess.to_s == "Cheat"
      puts game.cheat
    elsif guess.to_s == "Hint"
      puts game.hint(game.number)
    elsif guess.to_i < game.number
      puts game.too_low
    elsif guess.to_i > game.number
      puts game.too_high
    end
    puts "Guess again!"
    guess = gets.chomp
  end
  puts "You win!"
end

game = Game.new
start_game(game)
