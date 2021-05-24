
class Triangle
    attr_reader :s_one, :s_two, :s_three
    def initialize(side_one, side_two, side_three)
        @s_one = side_one
        @s_two = side_two
        @s_three = side_three
    end

    def type?()
        if ((s_one + s_two)<= s_three)||((s_one + s_three)<= s_two)||((s_two + s_three)<= s_one)
            return "NOT a triangle"
        elsif s_one == s_two && s_two == s_three
            return "Equalateral"
        elsif s_one == s_two || s_two == s_three || s_one == s_three
            return "Isosceles"
        elsif s_one != s_two && s_two != s_three && s_one != s_three
            return "Scalene"
        end
    end
end