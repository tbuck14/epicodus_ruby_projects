class Parcel
    attr_reader :length, :width, :height, :weight, :id
    @@parcels = {}
    @@total_rows = 0 

    def initialize(length, width, height, weight, id)
        @length = length
        @width = width
        @height = height
        @weight = weight
        @id = id || @@total_rows += 1
    end
    
    def save()
        @@parcels[self.id] = Parcel.new(self.length, self.width, self.height, self.weight, self.id)
    end

    def self.all()
        @@parcels.values()
    end

    def self.find(id)
        @@parcels[id]
    end

    def update(length, width, height, weight)
        @length = length
        @width = width
        @height = height
        @weight = weight
    end

    def delete()
        @@parcels.delete(self.id)
    end

    def ==(parcel_to_compare)
        bool = true
        bool = false if self.length != parcel_to_compare.length
        bool = false if self.width != parcel_to_compare.width
        bool = false if self.height != parcel_to_compare.height
        bool = false if self.weight != parcel_to_compare.weight
        return bool
    end
    
    def self.clear
        @@parcels = {}
        @@total_rows = 0
    end

    def volume()
       ( self.length )*(self.width)*(self.height)
    end

    def cost_to_ship(ship_speed)
        cost = 0 
        vol = self.volume()
        w = self.weight
        cost += ((vol*0.01) + (w*0.35))if ship_speed == "standard"
        cost += ((vol*0.015) + (w*0.35)) if ship_speed == "priority"
        cost += ((vol*0.03)+ (w*0.35)) if ship_speed == "overnight"
        cost
    end
end