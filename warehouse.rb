class Warehouse

	attr_reader :products
	
  def initialize
		@stock = []
	end

	def add_to_warehouse(product, qty)
  	qty.to_i.times {@stock << product}
  end

	def no_product_message
		
	end

end