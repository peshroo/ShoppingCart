require_relative 'Products.rb'

class ShoppingCart
  @@Products = []

  attr_accessor :sum_before_tax, :sum_after_tax

  def initialize
    @cost_before_tax = 0
    @cost_after_tax = 0
  end

  def self.all_products
    @@Products
  end

  def sum
    total_cost.each do |product|
    @cost_before_tax = products
    @cost_after_tax = products.base_price * tax_rate
    end
  end

  def add_product(name, base_price, tax_rate)
    new_product = Product.new(name, base_price, tax_rate)
    @@Products << new_product
  end

  def remove_product(name)
    @@Products.delete(name)
  end

  def sum_before_tax
    @@Products.each do |product|
      @sum_before_tax += product.base_price
    end
    @sum_before_tax = @sum_before_tax.round(2)
  end

  def sum_after_tax
    @@Products.each do |product|
      @sum_after_tax += product.total_price
    end
    @sum_before_tax = @sum_after_tax.round(2)

end
