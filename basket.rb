require_relative "./warehouse"
require_relative "./handling"

class Basket < Handling
  attr_reader :id, :name, :warehouse, :list

  @@id = 0

  def initialize
    @id = next_id
    @name = name
    @warehouse = warehouse
    @list = []
  end

  def print
    p "#{@name}\n"
    p "id\tname\tprice\tqty\n"

    list.each do |p|
      prod = warehouse.get_product(id)
      p "#{p[:id]}\t#{prod.name}\t#{prod.price}\t\t#{p[:qty]}\n"
    end

    sum(true)
    sum(false)
  end

  private

  def next_id
    @@id += 1
  end

  def gros_price(price, vat)
    (price * (1 + vat))
  end

  def sum(gros)
    
    sum = 0

    list.each do |prod|
      product = warehouse.get_product(prod[:id])

      if gros
        sum += gros_price(product.price, product.vat) * prod[:qty]
      else
        sum += product.price * prod[:qty]
      end
    end

    if gros
      p "GROS SUM: #{sum}\n"
    else
      p " NET SUM: #{sum}\n"
    end

  end
end