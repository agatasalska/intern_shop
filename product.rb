require_relative "./handling"

class Product < Handling
  @@id = 0
  attr_reader :id, :name, :price, :vat

  def initialize(name:, price:, vat:)
    @id = next_id
    @name = name
    @price = price
    @vat = vat
  end

  private

    def next_id
      @@id += 1
    end
end