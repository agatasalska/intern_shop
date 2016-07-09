require_relative "./handling"

class Warehouse < Handling

	attr_reader :id, :name, :products, :list
	#alias_method :get, :remove

	@@id = 0
	
  def initialize(name,  products)
  	@id = next_id
  	@name = name
  	@products = products
		@list = []
	end

	def get_product(id)
		products.find { |p| p.id == id}
	end

	private

		def next_id
    	@@id += 1
  	end
end