MARKUP_RATES = { flat_markup: 0.05,
                 worker_markup: 0.012,
                 product_type_markup: { 'drugs': 0.075, 'food': 0.13, 'electronics': 0.02 }
              }

class Order
  attr_reader :base_price, :number_of_workers, :product_type, :total_price
  def initialize(order_details = {})
    @base_price = order_details[:base_price] || nil
    @number_of_workers = order_details[:number_of_workers] || nil
    @product_type = order_details[:product_type] || nil
    @total_price = nil
  end

  def get_worker_markup_rate
    @number_of_workers * MARKUP_RATES[:worker_markup]
  end

  def get_product_type_markup_rate
    MARKUP_RATES[:product_type_markup][@product_type.to_sym]
  end

  def get_price_with_flat_markup
    @base_price * (1 + MARKUP_RATES[:flat_markup])
  end
end
