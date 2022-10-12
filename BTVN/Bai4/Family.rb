require_relative "Person"

class Family < Person
    attr_accessor :name_129, :age_129, :job_129, :passport_129 ,:address_129

    def initialize(name_129, age_129, job_129, passport_129, address_129)
        super(name_129, age_129, job_129, passport_129)
        @address_129 = address_129
    end

    def show
        puts "Name: #{@name_129}"
        puts "age: #{@age_129}"
        puts "job: #{@job_129}"
        puts "passport: #{@passport_129}"
        puts "address: #{@address_129}"
    end
end