
class Game

  def initialize
    @number = rand(1..100)

  end

  def start_game
    puts 'Guess a number between 1 to 100. Type Hint, for a hint, type Cheat to cheat'
    guess = gets.chomp
    until guess.to_i == @number
      if guess.to_s == "Cheat"
        puts "You are a cheater!!!! Shame! Shame! Shame! The answer is #{@number}"
        guess = gets.chomp
      elsif guess.to_s == "Hint"
        puts "Here is a hint, the number is divisible by 2"
        elsif guess.to_i < @number
        puts "Too low, guess again!"
        elsif
        guess.to_i > @number
        puts "Too high, guess again!"
      end
      puts "Guess again!"
      guess = gets.chomp
    end
    puts "You win!"
  end
end




# # guess_checker.check_guess(guess, @answer)
# Guess.check_guess(guess, @number)
# case guess
# when Guess.cheat(guess) then cheat_message
# when Guess.hint(guess)  then hint_message
# when Guess.too_low(guess) then too_low_message
# when Guess.too_high(guess) then too_high_message
