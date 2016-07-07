#!/usr/bin/env ruby
require 'active_support/core_ext/enumerable'

product1 = {:id => 1,
			:name => "eggs",
			:net_price => 10,
			:vat => 0.23}

product2 = {:id => 2,
			:name => "milk",
			:net_price => 5,
			:vat => 0.08}

product3 = {:id => 3,
			:name => "butter",
			:net_price => 12,
			:vat => 0.23}

product4 = {:id => 4,
			:name => "cheese",
			:net_price => 15,
			:vat => 0.23}

product5 = {:id => 5,
			:name => "yoghurt",
			:net_price => 3,
			:vat => 0.08}

$warehouse = [ 
							{
								:id => 1,
								:product_id =>1,
								:level => 3
							},

							{
								:id => 2,
								:product_id =>2,
								:level => 3
							},


							{
								:id => 3,
								:product_id =>3,
								:level => 3
							},


							{
								:id => 4,
								:product_id =>4,
								:level => 3
							},


							{
								:id => 5,
								:product_id =>5,
								:level => 3
							}
						 ]






$basket = []
$products = [product1, product2, product3, product4, product5]



def add_to_basket(p, q)

	q.times { $basket.push(p) }

	$total = $basket.sum { |p| p[:net_price] * (p[:vat] + 1) }

	p_index = $basket.index(p)
	product_m = $basket[p_index]
	p_id = product_m[:id]

	modified_product = $warehouse.select { |product| product[:product_id] == p_id }
	modified_product[0][:level] -= q

	p modified_product

end


def remove_from_basket(p, q)
	q.times {
						$basket.delete_at($basket.index(p))
					}

	$total = $basket.sum { |p| p[:net_price] * (p[:vat] + 1) }
end


add_to_basket(product5, 5)
add_to_basket(product4, 1)

remove_from_basket(product5, 3)

