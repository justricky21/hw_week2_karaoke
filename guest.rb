class Guest

# has name(string)//reader
# has favorite song(string)//reader
attr_reader :name
  def initialize(arg1, arg2)
    @name = arg1
    @favorite_song = arg2
  end

  # def get_fave_song(song)
  #   looks at song and finds it's name
  # end

end
