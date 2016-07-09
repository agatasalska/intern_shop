require './lib/product.rb'

RSpec.describe Product do
  it "has 2 params" do
    expect {
      Product.new(nil, nil)
    }.to_not raise_error
    # expect(Product.new(nil, nil)).to eql(nil)
  end

  context "#name" do
    it "returns proper value" do
      expect( Product.new("foo", nil).name ).to eql("foo")
    end

    it "returns proper value" do
      expect( Product.new("bar", nil).name ).to eql("bar")
    end
  end
  
  context "#price" do
    it "return 12 when given given" do
      expect(Product.new(nil, 12).price).to eql(12)
    end

    it "must be > 0" do
      product = Product.new(nil, 10)
      expect {
          expect(product.price)
         }
    end
  end

  context "#price_with_vat" do
    it "returns prive with vat" do
      expect(Product.new(nil, 10).price_with_vat).to eql(12.3)
    end
  end
end