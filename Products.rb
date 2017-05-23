class Products
  attr_accessor :base_price
  attr_reader :name, :tax_rate

  def initialize(name, base_price, tax_rate = 1.13)
    @name       = name
    @base_price = base_price
    @tax_rate   = tax_rate
  end

  def total_price(base_price, tax_rate)
    total_cost = base_price * tax_rate
    total_cost.round(2)
  end

end

product1 = Products.new('tshirt', 25)
product2 = Products.new('sweater', 50)
product3 = Products.new('pants', 30)
product4 = Products.new('shorts', 20)
