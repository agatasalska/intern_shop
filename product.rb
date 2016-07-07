class Product
  @@id = 0
  attr_reader :name, :price

  def initialize(name:, price:)
    @id = next_id
    @name = name
    @price = price
  end

  private
  def next_id
    @@id += 1
  end
end