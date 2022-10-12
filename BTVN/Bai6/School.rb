require_relative "Student"

class School < Student
  def initialize
    @students_129 = []
  end

  def addStudent(student_129)
    @students_129 << student_129
  end

  def getStudent20YearsOld()
    students = []
    @students_129.each do |student_129|
      if student_129.age_129 == 20
        students << student_129
      end
    end

    if students != []
      students.each do |student|
        student.show()
      end
    else
      puts "null"
    end
  end

  def countStudent23YearOldInDN()
    count = 0
    @students_129.each do |student_129|
      if student_129.age_129 == 23 && student_129.hometown_129 == "DN"
        count += 1
      end
    end
    return count
  end

  def show()
    @students_129.each do |student_129|
      student_129.show()
    end
  end
end