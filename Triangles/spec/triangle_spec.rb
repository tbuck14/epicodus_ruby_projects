require 'triangle'
require 'rspec'

describe('#Triangle') do

  it('correctly initalizes three arguments given and stores them in the correct variables') do
    triangle = Triangle.new(2,4,6)
    expect(triangle.s_one).to(eq(2))
    expect(triangle.s_two).to(eq(4))
    expect(triangle.s_three).to(eq(6))
  end


  describe('#type') do
    it ('returns Equalateral if all sides of a triangle are equal') do
      triangle2 = Triangle.new(2,2,2)
      expect(triangle2.type?).to(eq('Equalateral'))
    end
    it ('returns Isosceles if two sides of a triangle are equal') do
      triangle2 = Triangle.new(3,5,3)
      expect(triangle2.type?).to(eq('Isosceles'))
    end
    it ('returns Scalene if no sides of a triangle are equal') do
      triangle2 = Triangle.new(2,9,8)
      expect(triangle2.type?).to(eq('Scalene'))
    end
    it ('returns NOT a triangle if the sum of
     the lengths of any two sides of a triangle is less than or equal to the length of the third side') do
      triangle2 = Triangle.new(2,5,3)
      expect(triangle2.type?).to(eq('NOT a triangle'))
    end
  end
end