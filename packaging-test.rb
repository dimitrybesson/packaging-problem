require './test_helper'
require 'packaging'

class TestOrderPricing < MiniTest::Test

  def setup
    @order = Order.new
  end

  def test_order_object_is_instance_of_order
    assert_instance_of(Order, @order)
  end

  def test_order_has_base_price_attribute
    assert_equal(@order.base_price, nil)
  end

  def test_order_has_number_of_workers_attribute
    assert_equal(@order.number_of_workers, nil)
  end

  def test_order_has_product_type_attribute
    assert_equal(@order.product_type, nil)
  end
end
