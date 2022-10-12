require_relative "Hotel"
require_relative "Person"
require_relative "Room"
require_relative "RoomA"
require_relative "RoomB"
require_relative "RoomC"

hotel_129 = Hotel.new
while true
  # system("clear") || system("cls")
  puts "\n\n-----Application Manager Candidate-----"
  puts "Enter 1: To insert person for rent"
  puts "Enter 2: To remove person by passport"
  puts "Enter 3: To calculator price by passport"
  puts "Enter 4: To show infor"
  puts "Enter 5: To exit:"

  line = gets.to_i
  case line
  when 1
    puts "\n-----Insert person-----"
    puts "Enter name:"
    name_129 = gets.chomp
    puts "Enter age:"
    age_129 = gets.to_i
    puts "Enter passport:"
    passport_129 = gets.chomp

    puts "Choise a to rent room type A"
    puts "Choise b to rent room type B"
    puts "Choise c to rent room type C"
    choice_129 = gets.chomp
    if choice_129 == "a"
      room_129 = RoomA.new
    elsif choice_129 == "b"
      room_129 = RoomB.new
    elsif choice_129 == "c"
      room_129 = RoomC.new
    end

    puts "Enter number day for rent:"
    numberRent_129 = gets.to_i

    person_129 = Person.new(name_129, age_129, passport_129, room_129, numberRent_129)
    hotel_129.addPerson(person_129)
  when 2
    puts "\n-----Remove person-----"
    puts "Enter passport:"
    passport_129 = gets.chomp
    hotel_129.deletePerson(passport_129)
  when 3
    puts "\n-----Calculation price-----"
    puts "Enter passport:"
    passport_129 = gets.chomp
    price_129 = hotel_129.calculator(passport_129)
    puts "Price: #{price_129}"
  when 4
    puts "\n-----List of Customer-----"
    hotel_129.show()
  when 5
    puts "Exits"
    return
  else
    puts "Invalid"
  end
end
Footer
© 2022 GitHu