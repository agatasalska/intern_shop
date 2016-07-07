require_relative "./warehouse"

class Basket
  attr_reader :products

  def initialize
    @products = []
  end

  def add_to_basket(product, qty)

  	qty.to_i.times {@products << product}

  end

  def net_sum
  	@products.
  	map(&:price).
  	reduce(0, :+)
  end

  def remove_from_basket(product, qty)
  	qty.to_i.times {
						@products.delete_at(@products.index(product))
					}
  end
end