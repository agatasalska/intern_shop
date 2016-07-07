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

  private

  def next_id
    @@id += 1
  end

  
end