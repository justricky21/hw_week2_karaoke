require 'minitest/autorun'
require 'minitest/rg'
require_relative '../song'

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("All Star", "Smash Mouth", ["Somebody once told me", "the world was gonna roll me"])
    @song2 = Song.new("Shooting Stars", "Bag Raiders", ["It's late and I'm awake","Staring at the wall"])
    @song3 = Song.new("What is love","Haddaway",["What is love, baby don't hurt me","don't hurt me, don't hurt me, no more"])
    @song4 = Song.new("The 7th element", "Vitas",["brlblrblrblrbl","ha-ha-ha"])
  end

end
