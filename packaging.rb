WORKER_MARKUP = 0.012

class Order
  attr_reader :base_price, :number_of_workers, :product_type, :total_price
  def initialize(order_details = {})
    @base_price = order_details[:base_price] || nil
    @number_of_workers = order_details[:number_of_workers] || nil
    @product_type = order_details[:product_type] || nil
    @total_price = nil
  end

  def get_worker_markup_rate
    @number_of_workers * WORKER_MARKUP
  end
end
