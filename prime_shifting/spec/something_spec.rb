require('rspec')
require('primes')

describe('#primes_less_than') do
   it("returns an array of all prime numbers less than the argument") do 
        expect(primes_less_than(12)).to(eq([2,3,5,7,11]))
        expect(primes_less_than(100)).to(eq([2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]))
    end
end