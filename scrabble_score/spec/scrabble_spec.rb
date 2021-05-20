require('rspec')
require('ScrabbleWord')

describe(ScrabbleWord) do
    describe('#scrabble') do
        it("returns a score of 1 for the letter a") do
            single = ScrabbleWord.new("a")
            expect(single.scrabble()).to(eq(1))
        end
        it("return a specific score for each letter") do
            singles = ScrabbleWord.new('o')
            expect(singles.scrabble()).to(eq(1))
            singles.change_wrd('g')
            expect(singles.scrabble()).to(eq(2))
            singles.change_wrd('m')
            expect(singles.scrabble()).to(eq(3))
            singles.change_wrd('v')
            expect(singles.scrabble()).to(eq(4))
            singles.change_wrd('k')
            expect(singles.scrabble()).to(eq(5))
            singles.change_wrd('j')
            expect(singles.scrabble()).to(eq(8))
            singles.change_wrd('z')
            expect(singles.scrabble()).to(eq(10))
        end
        it("Returns the correct score for the word given")do 
            first_word = ScrabbleWord.new('Zebras')
            expect(first_word.scrabble()).to(eq(17))
        end 

    end
    
end