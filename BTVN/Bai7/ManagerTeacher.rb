require_relative "Teacher"

class ManagerTeacher
  def initialize
    @teachers_129 = []
  end

  def addTeacher(teacher_129)
    @teachers_129 << teacher_129
  end

  def deleteById(id)
    @teachers_129.each do |teacher_129|
      if teacher_129.id == id
        @teachers_129.delete(teacher_129)
        return true
      end
    end

    return false
  end

  def getSalary(id)
    @teachers_129.each do |teacher_129|
      if teacher_129.id == id
        return teacher_129.salary_129 + teacher_129.bonus_129 + teacher_129.penaty_129
      end
    end

    return 0
  end
end