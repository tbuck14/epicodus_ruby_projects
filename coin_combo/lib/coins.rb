require './coin_combo'

cent = Cents.new()
puts "Enter an ammount of money in cents:"
cents = gets.chomp.to_i
result = cent.coin_combo(cents)
puts "quarters: #{result[0]}"
puts "dimes: #{result[1]}"
puts "nickels: #{result[2]}"
puts "pennies: #{result[3]}"