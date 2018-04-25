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

  def test_cheat
    game = Game.new
    assert_equal "You are a cheater!!!! Shame!
    Shame! Shame! The answer is #{game.number}", game.cheat
  end

  def test_hint
    game = Game.new
    assert_equal "Here is a hint, the number is divisible by 2", game.hint
  end

  def test_too_low
    game = Game.new
    assert_equal "Too low, guess again!", game.too_low
  end

  def test_too_high
    game = Game.new
    assert_equal "Too high, guess again!", game.too_high
  end
end
