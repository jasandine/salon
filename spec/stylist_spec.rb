require('spec_helper')

describe(Stylist) do

  describe(".all") do 
    it("is an empty list of stylists at first") do
    	expect(Stylist.all()).to(eq([]))
    end
  end

  describe("#save") do 
  	it("lets you save stylists to the database") do 
  		stylist = Stylist.new({:stylist_name => "GZA", :id => nil})
  		stylist.save()
  		expect(Stylist.all()).to(eq([stylist]))
  	end
  end

  describe("#==") do 
  	it("is the same stylist if they have the same stylist_name") do 
  		stylist1 = Stylist.new({:stylist_name => "RZA", :id => nil})
  		stylist2 = Stylist.new({:stylist_name => "RZA", :id => nil})
  		expect(stylist1).to(eq(stylist2))
  	end
  end

end