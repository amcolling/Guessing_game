require 'pry'
class Game
  attr_reader :number,
              :counter,
              :winner

  def initialize
    @number = 42
    @counter = 0
    @winner = false
  end

  def random
    @counter += 1
    @number
  end

  def cheat
    guess = gets.chomp.to_i
    if guess == "cheat" || guess == "c"
    puts "The number is #{number}"
    end
  end

  def hint
    guess = gets.chomp.to_i
    if guess == "hint" || guess == "h"
      puts 'The number is an even number, and is between 40 and 50'
    end
  end

  def start_game
    p 'I have generated a random number for you to guess, what is your guess? To reveal the number, type (c)heat'
    @counter += 1
    guess = gets.chomp.to_i
    if guess == "hint" || guess == "h"
      puts 'The number is an even number, and is between 40 and 50'
    until @winner == true
      guess = gets.chomp.to_i
      if guess.zero?
      elsif guess < number then puts 'too low, guess again!'
      elsif guess > number then puts 'too high, guess again!'
      elsif guess == number
        puts 'You guessed the right number'
        @winner = true

      end
    end
    end

end
end
