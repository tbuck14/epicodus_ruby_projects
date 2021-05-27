class Riddle
    attr_reader :riddle, :answer, :id, :name
    @@riddles = {}             
    @@total_rows = 0 

    def initialize(name, riddle, answer, id)
        @name = name.downcase
        @riddle = riddle.downcase
        @answer = answer.downcase
        @id = id || @@total_rows += 1
    end

    def save()
        @@riddles[self.id] = Riddle.new(self.name, self.riddle, self.answer, self.id)
    end

    def guess(ans) 
        if ans.downcase.split == self.answer.split    
           return true
        else
            return false
        end
    end

    def self.all()
        @@riddles.values()
    end
    
    def self.find(id)
        @@riddles[id]
    end


end