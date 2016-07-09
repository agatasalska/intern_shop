require './basket.rb'


RSpec.describe Basket do

	it "takes two parameters and returns Basket object" do
		@basket = Basket.new("Name", "Warehouse")
		expect(@basket).to be_a Basket
	end

end