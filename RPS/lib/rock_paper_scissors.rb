require './RPSclass'
game = RPS.new()
puts "Welcome to rock, paper, scissors!"
p1 = ""
p2 = ""
    while true
        puts "Player one enter: paper, rock, or scissors"
        p1 = gets.chomp
        if ("paper rock scissors".include?(p1) == false ||p1 == nil ||p1 == "" )
            puts "whoops! #{p1} is not a valid response!"
        else
            break
        end
    end
    while true 
        puts "Player two enter: paper, rock, or scissors"
        p2 = gets.chomp 
        if ("paper rock scissors".include?(p2) == false || p2 == nil || p2 == "")
            puts "whoops! #{p2} is not a valid response!"
        else   
            break
        end
    end
    result = game.wins?(p1,p2)
        
    if result == true
        puts "Player one wins!"
    elsif result == false
        puts "Player two wins!"
    else
        puts "The game was a tie!"
    end
