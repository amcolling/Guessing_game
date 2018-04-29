
class Game


  def initialize
    @number = rand(1..100)
  end

  def number
    @number
  end


  def cheat
    "You are a cheater!!!! Shame! Shame! Shame! The answer is #{@number}"
  end

  def hint(num)
    if num % 2 == 0
    "Here is a hint, the number is divisible by 2"
    else
    "Here is a hint, the number is not divisible by 2"
    end
  end

  def too_low
    "Too low, guess again!"
  end

  def too_high
    "Too high, guess again!"
  end

end
