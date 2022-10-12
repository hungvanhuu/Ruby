require_relative "Student"
require_relative "Card"
require_relative "ManagerCard"

managerCard = ManagerCard.new
while true
  puts "\n\n-----Application Manager Card-----"
  puts "Enter 1: To insert card"
  puts "Enter 2: To remove card"
  puts "Enter 3: To show cards"
  puts "Enter 4: To exit"

  line = gets.to_i
  case line
  when 1
    puts "\nEnter ID:"
    id_129 = gets.chomp
    puts "Enter name:"
    name_129 = gets.chomp
    puts "Enter age:"
    age_129 = gets.to_i
    puts "Enter school:"
    school_129 = gets.chomp
    puts "Enter borrow date:"
    borrowDate_129 =  gets.to_i
    puts "Enter payment date:"
    paymentDate_129 =  gets.to_i
    puts "Enter book id:"
    bookId_129 =  gets.chomp

    card = Card.new(name_129, age_129, school_129, id_129, borrowDate_129, paymentDate_129, bookId_129)

    managerCard.addCard(card)
  when 2
    puts "\nEnter id card:"
    id_129 = gets.chomp
    managerCard.deleteCard(id_129)
  when 3
    puts "\n-----Show cards-----"
    managerCard.show()
  when 4
    puts "Exits"
    return
  else
    puts "Invalid"
  end
end