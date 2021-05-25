require 'parcel'
require 'rspec'

describe('#Parcel') do

  before(:each) do
    Parcel.clear()
  end


  describe('#save')do 
    it('stores a parcels information in the mock database') do
        parcel = Parcel.new(5,5,5,5,nil)
        parcel.save()
        parcel2 = Parcel.new(2,2,2,2,nil)
        parcel2.save()
        expect(Parcel.all).to(eq([parcel, parcel2]))
    end
  end

  describe('.all')do 
    it('returns an empty array when there are no parcels') do
      expect(Parcel.all).to(eq([]))
    end
  end

  describe('.find')do 
    it('returns a parcel based on its id') do
      p = Parcel.new(3,3,3,3,88)
      p.save()
      expect(Parcel.find(p.id)).to(eq(p))
    end
  end

  describe('#update')do 
    it('uptades a parcels values in the mock database') do
      p1 = Parcel.new(1,1,1,1,nil)
      p1.save()
      p1.update(2,4,2,4)
      expect(p1.length).to(eq(2))
      expect(p1.width).to(eq(4))
      expect(p1.height).to(eq(2))
      expect(p1.weight).to(eq(4))
    end
  end

  describe('#delete')do 
    it('deletes a parcel from the mock database') do
      parcel = Parcel.new(2,3,4,3,nil)
      parcel.save()
      parcel.delete()
      expect(Parcel.all).to(eq([]))
    end
  end

  describe('#==')do 
    it('returns true if two parcels have the same attributes') do
      parcel_one = Parcel.new(1,2,3,4,nil)
      parcel_two = Parcel.new(1,2,3,4,nil)
      expect(parcel_one).to(eq(parcel_two))
    end
  end

  describe('.clear')do 
    it('clears mock database') do
      parcel = Parcel.new(1,2,4,3,nil)
      parcel.save()
      parcel2 = Parcel.new(2,4,4,7,nil)
      parcel2.save()
      parcel3 = Parcel.new(1,6,7,3,nil)
      parcel3.save()
      parcel4 = Parcel.new(1,9,2,8,nil)
      parcel4.save()
      Parcel.clear
      expect(Parcel.all).to(eq([]))
    end
  end
  
  describe('#volume') do
      it('calculates the volume of a parcel') do 
        parcel = Parcel.new(2,2,2,14,nil)
        parcel.save()
        expect(parcel.volume()).to(eq(8))
      end
  end

  describe('#cost_to_ship') do 
    it('calculates shipping cost based on volume, weight, and speed of shipping') do 
      parcel = Parcel.new(14,10,5,1,nil)
      parcel.save()
      expect(parcel.cost_to_ship('priority')).to(eq(10.85))
      expect(parcel.cost_to_ship('standard')).to(eq(7.35))
      expect(parcel.cost_to_ship('overnight')).to(eq(21.35))
    end
  end
end