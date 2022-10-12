class Student
    attr_accessor :name_129, :age_129, :hometown_129, :classStudent_129
  
    def initialize(name_129, age_129, hometown_129, classStudent_129)
      @name_129 = name_129
      @age_129 = age_129
      @hometown_129 = hometown_129
      @classStudent_129 = classStudent_129
    end
  
    def show()
      puts "Name: #{@name_129} - age: #{@age_129} - hometown: #{@hometown_129} - class student: #{@classStudent_129}"
    end
  end