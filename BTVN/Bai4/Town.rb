require_relative "Family"
require_relative "Person"

class Town < Family
    # attr_accessor :families
    def initialize()
        @families_129 = []
    end

    def addFamily(family_129)
        @families_129 << family_129
    end

    def showFamilyMembers()
        @families_129.each do |member_129|
            member_129.show()
        end
    end
end