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


end
