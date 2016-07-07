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

	def add_to_warehouse(product, qty)
  	qty.to_i.times {@list << product}
  end

	def no_product_message
		
	end

end