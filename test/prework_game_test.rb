require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'
require './lib/prework_game'


class TestPreworkGame < Minitest::Test
    def test_it_exists
      game = Game.new
      assert_instance_of Game, game
    end

    # def test_play
    #   game = Game.new
    #   user_input = gets.chomp.to_i
    #   assert_equal user_input, game.play
    # end

    # def test_cheat
    #   game = Game.new
    #   number = rand(1..100)
    #   assert_equal "The number is #{number}", game.cheat
    # end






end

#
# The computer should generate a random number in the range of 1 to 100.
# The computer should prompt the user to guess the random number.
# Level 1: If the guessed number is the same as the random number, the computer responds with You guessed the right number!, if it is not correct, the computer responds with Guess again and the computer prompts the user for another guess.
# Level 2: When the user responds with their guess, the computer must check whether the guess is higher or lower than the random number and respond accordingly, asking for another guess if the guess is wrong.
# Level 3: In the instructions, add the ability to cheat. If the user inputs (c) or (c)heat, the random number is shown to them.
# Level 4: Add a hint. Maybe when the user guesses incorrectly, the computer gives the user a mathematical hint about the number. Get creative! For instance:
#
# puts "The secret number is divisible by 5."
