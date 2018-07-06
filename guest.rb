class Guest

# has name(string)//reader
# has favorite song(string)//reader
# has wallet//reader
attr_reader :name, :favorite_song, :wallet
  def initialize(arg1, arg2, arg3)
    @name = arg1
    @favorite_song = arg2
    @wallet = arg3
  end

  def charge_entry(fee)
    @wallet -= fee
  end

  # def get_fave_song(song)
  #   looks at song and finds it's name
  # end

end
