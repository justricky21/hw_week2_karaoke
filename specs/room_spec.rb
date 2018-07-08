require 'minitest/autorun'
require 'minitest/rg'
require_relative '../room'

class TestRoom < MiniTest::Test

  def setup
    @song1 = Song.new("All Star", "Smash Mouth", ["Somebody once told me", "the world was gonna roll me"])
    @song2 = Song.new("Shooting Stars", "Bag Raiders", ["It's late and I'm awake","Staring at the wall"])
    @song3 = Song.new("What is love","Haddaway",["What is love, baby don't hurt me","don't hurt me, don't hurt me, no more"])
    @song4 = Song.new("The 7th element", "Vitas",["brlblrblrblrbl","ha-ha-ha"])
    @room1 = Room.new("1", 5, 3)
    @room2 = Room.new("2", 11, 8)
    @guest1 = Guest.new("Hewei", "All Star", 10)
    @guest2 = Guest.new("Louie", "7th Element", 10)
    @guest3 = Guest.new("Dewie", "What is love", 15)
    @guest4 = Guest.new("Donald", "Shooting stars", 100)
  end

  def test_check_in_guest
    @room1.check_in(@guest1)
    assert_equal(5,@guest1.wallet)
    assert_equal(@guest1, @room1.guest_list[0])
  end

  def test_check_out_guest
    @room1.check_in(@guest1)
    @room1.check_out(@guest1)
    assert_nil(@room1.guest_list[0])
  end

  def test_check_in_guest_no_space
    @room1.check_in(@guest1)
    @room1.check_in(@guest2)
    @room1.check_in(@guest3)
    @room1.check_in(@guest4)
    # guest4 cannot enter
    assert_nil(@room1.guest_list[3])
  end

  def test_check_in_guest_no_money
    # guest 1 has 10 buckazoids
    @room1.check_in(@guest1)
    @room1.check_out(@guest1)
    # guest 1 has 5 buckazoids
    @room1.check_in(@guest1)
    @room1.check_out(@guest1)
    # guest 1 has 0 buckazoids
    @room1.check_in(@guest1)
    # guest 1 cannot affort entry
    assert_nil(@room1.guest_list[0])
    assert_equal(0,@guest1.wallet)
  end

  def test_fave_song
    @room1.add_to_shuffle(@song1)
    assert_equal("YAYOOOO!",@guest1.get_fave_song(@room1.currently_playing))
  end

  def test_room_has_till
    @room1.check_in(@guest1)
    assert_equal(5, @room1.till)
  end

  def test_room_room_charter
    @room1.check_in(@guest1)
    @room1.check_out(@guest1)
    @room1.check_in(@guest1)
    assert_equal(10, @room1.charter_lookup(@guest1))
  end

end
