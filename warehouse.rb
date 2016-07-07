require_relative "./handling"

class Warehouse < Handling

	attr_reader :id, :name, :products, :list

	@@id = 0
	
  def initialize
  	@id = next_id
  	@name = name
  	@products = products
		@list = []
	end

	private

		def next_id
    	@@id += 1
  	end
end