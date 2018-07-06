require 'minitest/autorun'
require 'minitest/rg'
require_relative '../song'

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("All Star", "Smash Mouth", ["Somebody once told me", "the world was gonna roll me"])
    @song2 = Song.new("Shooting Stars", "Bag Raiders", ["It's late and I'm awake","Staring at the wall"])
    @song3 = Song.new("What is love","Haddaway",["What is love, baby don't hurt me","don't hurt me, don't hurt me, no more"])
    @song4 = Song.new("The 7th element", "Vitas",["brlblrblrblrbl","ha-ha-ha"])
    @song_list = [@song1, @song2, @song3, @song4]
    @room1 = Room.new("1", @song_list)
    @room2 = Room.new("2", @song_list)
    @guest1 = Guest.new("Hewei", "All Star")
    @guest2 = Guest.new("Louie", "7th Element")
    @guest3 = Guest.new("Dewie", "What is love")
  end

end
