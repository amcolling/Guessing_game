require 'pry'
class Game
  attr_reader :counter,
              :number,
              :guess
  # def number
  #   @number
  # end

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
end
