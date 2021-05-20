require('rspec')
require('title_case')

describe('#title_case') do
    it('returns a given phrase with all words capitalized') do 
        expect(title_case("when i face the waters")).to(eq("When I Face The Waters"))
    end
end