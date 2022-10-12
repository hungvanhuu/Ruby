require_relative "Student"
require_relative "Card"

class ManagerCard < Card
  def initialize
    @cards_129 = []
  end

  def addCard(card)
    @cards_129 << cards_129
  end

  def deleteCard(id)
    @cards_129.each do |card_129|
      if card_129.id == id
        @cards_129.delete(card_129)
        return true
      end
    end

    return false
  end

  def show()
    @cards_129.each do |card_129|
      card_129.show()
    end
  end
end