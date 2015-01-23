require('spec_helper')

describe(Stylist) do

  describe(".all") do 
    it("is an empty list of stylists at first") do
    	expect(Stylist.all()).to(eq([]))
    end
  end

  describe(".find") do 
  	it("returns a stylist by their ID number") do 
  		test_stylist = Stylist.new({:stylist_name => "RZA", :id => nil})
  		test_stylist.save()
  		test_stylist2 = Stylist.new({:stylist_name => "ODB", :id => nil})
  		test_stylist2.save()
  		expect(Stylist.find(test_stylist2.id())).to(eq(test_stylist2))
  	end
  end

  describe("#stylist_name") do 
  	it("returns stylist name") do 
  		stylist = Stylist.new({:stylist_name => "Bobby Boulders", :id => nil})
  		expect(stylist.stylist_name()).to(eq("Bobby Boulders"))
  	end
  end

  describe("#id") do 
  	it("sets a stylists ID when you save it") do 
  		stylist = Stylist.new({:stylist_name => "Bobby Boulders", :id => nil})
  		stylist.save()
  		expect(stylist.id()).to(be_an_instance_of(Fixnum))
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

  describe("#clients") do 
  	it("returns an array of clients for a single stylist") do 
  		test_stylist = Stylist.new({:stylist_name => "Bobby Boulders", :id => nil})
  		test_stylist.save()
  		test_client = Client.new({:client_name => "Tony Starx", :stylist_id => test_stylist.id()})
  		test_client.save()
  		expect(test_stylist.clients()).to(eq([test_client]))
  	end
  end
end