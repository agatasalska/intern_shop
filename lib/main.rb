require_relative "./product"
require_relative "./basket"
require_relative "./warehouse"
require_relative "./handling"

eggs = Product.new({name: 'eggs', price: 10, vat: 0.23})
cheese = Product.new({name: 'cheese', price: 5, vat: 0.23})
milk = Product.new(name: 'milk', price: 3, vat: 0.08)

products = [eggs, cheese, milk]

stock = Warehouse.new("stock", products)
basket = Basket.new("basket", stock)


stock.add_to("cheese", 2)
stock.add_to("milk", 2)
stock.add_to("eggs", 2)

basket.add_to("cheese", 2)
basket.add_to("milk", 1)

p basket
basket.print


basket.remove_from("cheese", 1)

p basket
p basket.print

p stock