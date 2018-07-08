require_relative 'guest'
require_relative 'song'
require_relative 'charter'
class Room

# has room number(string)//reader
# has room song_list(array)
# does select song by name, returns songlist.name[x]
# does guest_list, returns guest.name
# does check_in, takes in guest, guest.wallet
# returns boolean
# does check_out, takes in guest, returns boolean
attr_reader :currently_playing, :list, :till

  def initialize(arg1, arg2, arg3)
    @number = arg1
    @guests = []
    @admission_fee = arg2
    @room_size = arg3
    @currently_playing = nil
    @till = 0
    @charter = []
  end

  @list = @song_list
  def check_in(guest)
    if (@guests.length < @room_size) && (guest.wallet >= @admission_fee)
      guest.charge_entry(@admission_fee)
      @guests.push(guest)
      @charter.push(Charter.new(guest.name, @admission_fee))
      @till += @admission_fee
      return true
    else
      return false
    end
  end

  def charter_lookup(guest)
    total_spent = 0
    for each in @charter
      if each.guest_name == guest.name
        total_spent += each.money_spent
      end
    end
    return total_spent
  end

  def add_to_shuffle(song)
    @currently_playing = song
  end

  def check_out(guest)
    @guests.delete(guest)
  end

  def guest_list
    return @guests
  end

end
