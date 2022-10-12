require_relative "Student"
require_relative "School"

school_129 = School.new
while true
  # add student
  puts "Enter number student:"
  number = gets.to_i
  for i in 0..number-1
    puts "\n-----Insert student #{i+1}-----"
    puts "Enter name:"
    name_129 = gets.chomp
    puts "Enter age:"
    age_129 = gets.to_i
    puts "Enter hometown:"
    hometown_129 = gets.chomp
    puts "Enter class:"
    classStudent_129 = gets.to_i

    student_129 = Student.new(name_129, age_129, hometown_129, classStudent_129)
    school_129.addStudent(student_129)
  end
  puts "\n\n-----List of Student-----"
  school_129.show()

  # Students 20 years old
  puts "\n\n-----List of Student 20 years old-----"
  school_129.getStudent20YearsOld()

  # Student 20 years old and in DN
  count_129 = school_129.countStudent23YearOldInDN()
  puts "count: #{count_129}"
end