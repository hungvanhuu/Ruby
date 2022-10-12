require_relative "Room"

class RoomB < Room
  def initialize
    super("B", 300)
  end

  def show()
    puts "Room B - category: #{@category_129}, price: #{@price_129}"
  end
end