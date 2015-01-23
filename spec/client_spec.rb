require('spec_helper')

describe(Client) do 

	describe(".all") do 
		it("is an empty list of clients at first") do
			expect(Client.all()).to(eq([]))
		end
	end


end
