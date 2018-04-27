require 'pry'
class Guess
  attr_reader :number,
              :guess

  def initialize
    @number = rand(1..100)
    @guess = gets.chomp
  end

  def cheat
    if @guess == "Cheat"
     "You are a cheater!!!! Shame!
      Shame! Shame! The answer is #{@number}"
    end
  end

  def hint
    if @guess == "Hint"
      "Here is a hint, the number is divisible by 2"
    end
  end

  def too_low
    if @guess.to_i < number
      "Too low, guess again!"
    end
  end

  def too_high
    if @guess.to_i > number
      "Too high, guess again!"
    end
  end
end
