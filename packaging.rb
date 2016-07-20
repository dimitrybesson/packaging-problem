class Order
  attr_reader :base_price, :number_of_workers, :product_type
  def initialize(order_details = {})
    @base_price = order_details[:base_price] || nil
    @number_of_workers = order_details[:number_of_workers] || nil
    @product_type = order_details[:product_type] || nil
  end
end
