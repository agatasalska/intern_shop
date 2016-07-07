require_relative "./product"
require_relative "./basket"
require_relative "./warehouse"
require_relative "./vat"


basket = Basket.new()
warehouse = Warehouse.new()
eggs = Product.new({name: 'eggs', price: 10})
cheese = Product.new({name: 'cheese', price: 5})
milk = Product.new(name: 'milk', price: 3)

warehouse.add_to_warehouse(cheese, 2)
warehouse.add_to_warehouse(milk, 2)
warehouse.add_to_warehouse(eggs, 2)

basket.add_to_basket(cheese, 2)
basket.add_to_basket(milk, 1)

p basket
p basket.sum

basket.remove_from_basket(cheese, 1)

p basket
p basket.net_sum

p warehouse