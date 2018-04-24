require 'pry'
class Game
  attr_reader :counter

  def initialize
    @counter = 0
  end




  def start_game
    number = rand(1..100)

    loop do
      puts 'Guess a number between 1 to 100. Type Hint, for a hint, type Cheat to cheat'
      guess = gets.chomp
      @counter += 1
      if guess == number
        puts "You win! You guessed the right number"
      end
      if guess.to_s == "Cheat"
        puts "You are a cheater!!!! Shame! Shame! Shame! The answer is #{number}"
        break
      end
      if guess.to_s == "Hint"
        puts "Here is a hint, the number is divisible by 2"
        break
      end
      if guess.to_i < number
        puts "Too low, guess again!"
        guess = gets.chomp
      elsif
        guess.to_i > number
        puts "Too high, guess again!"
        guess = gets.chomp
      end
    end
  end
end
