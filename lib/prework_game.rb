require 'pry'
class Game
  attr_reader :counter,
              :number,
              :guess
  

  def initialize
    @counter = 0
    @number = rand(1..100)
    @guess = gets.chomp
  end

  def cheat
    @counter += 1
    if guess == "Cheat"
      "You are a cheater!!!! Shame!
      Shame! Shame! The answer is #{@number}"
    end
  end

  def hint
    @counter += 1
    if guess == "Hint"
      "Here is a hint, the number is divisible by 2"
    end
  end

  def too_low
    @counter += 1
    if guess.to_i < number
      "Too low, guess again!"
    end
  end

  def too_high
    @counter += 1
    if guess.to_i > number
      "Too high, guess again!"
    end
  end
end
