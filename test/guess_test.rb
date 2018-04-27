require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'
require './lib/guess'



class TestGuess < Minitest::Test
  def test_number
    guess = Guess.new
    assert_instance_of Integer, guess.number
  end

  def test_cheat
    guess = Guess.new
    assert_equal "You are a cheater!!!! Shame! Shame! Shame! The answer is #{guess.number}", guess.cheat
  end
  #
  # def test_hint
  #   guess = Guess.new
  #   assert_equal "Here is a hint, the number is divisible by 2", guess.hint
  # end
  #
  # def test_too_low
  #   guess = Guess.new
  #   assert_equal "Too low, guess again!", guess.too_low
  # end
  #
  # def test_too_high
  #   guess = Guess.new
  #   assert_equal "Too high, guess again!", guess.too_high
  # end

  # def test_cheat
  #   expected = "you are a cheater"
  #   actual = Guess.check_guess("Cheat", 50)
  #
  #   assert_equal actual, expected
  # end
  #
  # def test_too_low
  #   expected = "Too low, guess again!"
  #   actual = Guess.check_guess("50", 50)
  #
  #   assert_equal expected, actual
  # end
end
