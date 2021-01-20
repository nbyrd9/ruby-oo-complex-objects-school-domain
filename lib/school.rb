# code here!
class School
    attr_accessor :roster, :grade
    attr_reader :school
    def initialize(school)
        @school = school
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student (name, grade)
        if @roster[grade] != nil
            @roster[grade] << name
       else
        @roster[grade] = [name]
       end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key, value|
            value.sort!
        end
    end
end

# school = School.new("Bayside High School")
# # school.add_student("Zach Morris", 9)
# # school.roster