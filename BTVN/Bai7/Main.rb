require_relative "ManagerTeacher"
require_relative "Teacher"

managerTeacher = ManagerTeacher.new
while true
  puts "\n\n-----Application Manager Teacher-----"
  puts "Enter 1: To insert teacher"
  puts "Enter 2: To remove teacher"
  puts "Enter 3: To get salary"
  puts "Enter 4: To exit"

  line = gets.to_i
  case line
  when 1
    puts "\n-----Insert Teacher-----"
    puts "Enter ID:"
    id_129 = gets.chomp
    puts "Enter name:"
    name_129 = gets.chomp
    puts "Enter age:"
    age_129 = gets.to_i
    puts "Enter hometown:"
    hometown_129 = gets.chomp
    puts "Enter salary:"
    salary_129 = gets.to_i
    puts "Enter bonus:"
    bonus_129 = gets.to_i
    puts "Enter penaty"
    penaty_129 = gets.to_i
    puts "Enter real salary:"
    realSalary_129 = gets.to_i

    teacher_129 = Teacher.new(salary_129, bonus_129, penaty_129, realSalary_129, name_129, age_129, hometown_129, id_129)

    managerTeacher.addTeacher(teacher_129)
  when 2
    puts "\n-----Remove teacher-----"
    puts "Enter id teacher:"
    id_129 = gets.chomp
    managerTeacher.deleteById(id_129)
  when 3
    puts "\n-----Get salary teacher-----"
    puts "Enter id teacher:"
    id_129 = gets.chomp
    managerTeacher.getSalary(id_129)
  when 4
    puts "Exits"
    return
  else
    puts "Invalid"
  end
end