require('rspec')
require('RPSclass')

describe('#RPS') do
    it("returns true if rock is the object and scissors is the argument") do
        game = RPS.new()
        expect(game.wins?("rock", "scissors")).to(eq(true))
    end
    it("returns true for a win and false for a loss, also tie if tie") do 
        game2 = RPS.new()
        expect(game2.wins?("paper","paper")).to(eq("tie"))
        expect(game2.wins?("scissors","scissors")).to(eq("tie"))
        expect(game2.wins?("rock","rock")).to(eq("tie"))
        expect(game2.wins?("paper","rock")).to(eq(true))
        expect(game2.wins?("paper","scissors")).to(eq(false))
        expect(game2.wins?("scissors","paper")).to(eq(true))
        expect(game2.wins?("scissors","rock")).to(eq(false))
        expect(game2.wins?("rock","paper")).to(eq(false))
        expect(game2.wins?("rock","scissors")).to(eq(true))
    end
end