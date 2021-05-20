class RPS 
    def wins?(obj, arg)
        return "tie" if obj == arg
        if obj == "paper"
            return true if arg == "rock"
        elsif obj == "scissors"
            return true if arg == "paper"
        else
            return true if arg == "scissors"
        end
        false
    end
end