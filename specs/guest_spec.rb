require 'minitest/autorun'
require 'minitest/rg'
require_relative '../guest'

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Hewei", "All Star", 10)
    @guest2 = Guest.new("Louie", "7th Element", 10)
    @guest3 = Guest.new("Dewie", "What is love", 15)
    @guest4 = Guest.new("Donald", "Shooting stars", 100)
  end

  def test_charge_entry
    @guest1.charge_entry(10)
    assert_equal(0, @guest1.wallet)
  end

end
