require_relative 'guest'
require_relative 'song'
class Room

# has room number(string)//reader
# has room song_list(array)
# does select song by name, returns songlist.name[x]
# does guest_list, returns guest.name
# does check_in, takes in guest, returns boolean
# does check_out, takes in guest, returns boolean
  def initialize(arg1, arg2)
    @number = arg1
    @list = arg2
    @guests = []
  end

  def check_in(guest)
    @guests.push(guest)
  end

  def check_out(guest)
    @guests.delete(guest)
  end

  def guest_list
    return @guests
  end

end
