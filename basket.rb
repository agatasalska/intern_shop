require_relative "./warehouse"
require_relative "./handling"

@@id = 0

class Basket < Handling
  attr_reader :id, :name, :warehouse, :list

  def initialize
    @id = next_id
    @name = name
    @warehouse = warehouse
    @list = []
  end

  def print_basket
    p "Basket #{name}:\sname\tprice\tqty\n"
    
  end

  def sum
    net_sum = @list.
    map(&:price).
    reduce(0, :+)

    #gros_sum = net_sum * vat #dokończyć

    #p net_sum
    #p gros_sum
  end
end