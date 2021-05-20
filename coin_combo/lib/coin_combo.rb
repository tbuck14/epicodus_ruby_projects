class Cents 
    def coin_combo(cents)
        coins = []
        coins[0] = cents/25
        cents = cents%25
        coins[1] = cents/10
        cents = cents%10
        coins[2] = cents/5
        cents = cents%5
        coins[3] = cents
        coins
    end
end