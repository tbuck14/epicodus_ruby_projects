require 'rspec'
require 'coin_combo'

describe("#coin_combo") do
    it ("returns the minimum ammount of coins to make up a cent ammount given")do
        c = Cents.new()
        expect(c.coin_combo(123)[0]).to(eq(4))
        expect(c.coin_combo(123)[1]).to(eq(2))
        expect(c.coin_combo(123)[2]).to(eq(0))
        expect(c.coin_combo(123)[3]).to(eq(3))
    end
end