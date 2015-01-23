require('spec_helper')

describe(Client) do 

	describe(".all") do 
		it("is an empty list of clients at first") do
			expect(Client.all()).to(eq([]))
		end
	end

	describe("#save") do 
		it("adds a client to the array of saved clients") do 
			test_client = Client.new({:client_name => "ODB", :stylist_id => 1})
			test_client.save()
			expect(Client.all()).to(eq([test_client]))
		end
	end

	describe("#==") do 
		it("is the same client if they have the same client_name and stylist_id") do
			client1 = Client.new({:client_name => "ODB", :stylist_id => 1})
			client2 = Client.new({:client_name => "ODB", :stylist_id => 1})
			expect(client1).to(eq(client2))
		end
	end
end
