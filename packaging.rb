class Order
  attr_reader :base_price, :number_of_workers, :product_type
  def initialize
    @base_price = nil
    @number_of_workers = nil
    @product_type = nil
  end
end
