require_relative 'guest'
require_relative 'song'
class Room

# has room number(string)//reader
# has room song_list(array)
# does select song by name, returns songlist.name[x]
# does guest_list, returns guest.name
# does check_in, takes in guest, returns boolean
# does check_out, takes in guest, returns boolean
  def initialize(arg1, arg2, arg3, arg4)
    @number = arg1
    @list = arg2
    @guests = []
    @admission_fee = arg3
    @room_size = arg4
  end

  def check_in(guest)
    if (@guests.length < @room_size) && (guest.wallet >= @admission_fee)
      guest.charge_entry(@admission_fee)
      @guests.push(guest)
      return true
    else
      return false
    end
  end

  def check_out(guest)
    @guests.delete(guest)
  end

  def guest_list
    return @guests
  end

end
