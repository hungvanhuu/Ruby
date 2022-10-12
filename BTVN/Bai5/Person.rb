require_relative "Room"

class Person < Room
  attr_accessor :name_129, :age_129, :passport_129, :room_129, :numberRent_129

  def initialize(name_129, age_129, passport_129, room_129, numberRent_129)
    @name_129 = name_129
    @age_129 = age_129
    @passport_129 = passport_129
    @room_129 = room_129
    @numberRent_129 = numberRent_129
  end

  def show()
    puts "Name: #{@name_129}"
    puts "age: #{@age_129}" 
    puts "passport: #{@passport_129}"
    puts "room: #{@room_129}"
    puts "number rent: #{@numberRent_129}"
  end
end