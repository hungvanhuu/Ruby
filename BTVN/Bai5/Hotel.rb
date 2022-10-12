require_relative "Person"
require_relative "Room"

class Hotel < Person
  def initialize
    @room_129 = []
  end

  def addPerson(person_129)
    @room_129 << person_129
    puts("Add successfully")
  end

  def deletePerson(passport)
    person = findPersonByPassport(passport)
    @room_129.delete(person)
    puts "Remove successfully"
  end

  def calculator(passport)
    person = findPersonByPassport(passport)
    return total = person.room_129.price_129 * person.numberRent_129
  end

  def findPersonByPassport(passport)
    @room_129.each do |person_129|
      if person_129.passport_129 == passport
        return person_129
      end
    end
  end

  def show()
    @room_129.each do |person_129|
      person_129.show()
    end
  end
end