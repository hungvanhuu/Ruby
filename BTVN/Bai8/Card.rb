require_relative "Student"

class Card < Student
  attr_accessor :name_129, :age_129, :school_129, :id_129, :borrowDate_129, :paymentDate_129, :bookId_129

  def initialize(name_129, age_129, school_129, id_129, borrowDate_129, paymentDate_129, bookId_129)
    super(name_129, age_129, school_129)
    @id_129 = id_129
    @borrowDate_129 = borrowDate_129
    @paymentDate_129 = paymentDate_129
    @bookId_129 = bookId_129
  end

  def show()
    puts "Id: #{@id_129} - name: #{@name_129} - age: #{@age_129} 
    - school: #{@school_129} - borrow date: #{@borrowDate_129} 
    - payment date: #{@paymentDate_129} - book id: #{@bookId_129}"
  end
end