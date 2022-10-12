require_relative "Room"

class RoomC < Room
  def initialize
    super("C", 100)
  end

  def show()
    puts "Room C - category: #{@category_129}, price: #{@price_129}"
  end
end