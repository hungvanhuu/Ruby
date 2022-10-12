require_relative "Person"
require_relative "Family"
require_relative "Town"

town_129 = Town.new

while true
    puts "Enter number town:"
    n_129 = gets.chomp.to_i
    for i in 0..n_129-1
        puts "\n----------Town #{i+1}:----------"
        # Input foreach family
        puts "Enter address:"
        address_129 = gets.chomp

        # Enter person number in family
        puts "Enter number person:"
        number_129 = gets.to_i

        for j in 0..number_129-1
            # Input person for famil
            puts "\nMember #{j+1}:"
            puts "Enter name:"
            name_129 = gets.chomp
            puts "Enter age:"
            age_129 = gets.to_i
            puts "Enter job:"
            job_129 = gets.chomp
            puts "Enter passport:"
            passport_129 = gets.chomp

            family_129 = Family.new(name_129, age_129, job_129, passport_129, address_129)
            town_129.addFamily(family_129)
        end
    end



    puts "\n------------------"
    town_129.showFamilyMembers()
end