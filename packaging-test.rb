require './test_helper'
require 'packaging'

class TestOrderPricing < MiniTest::Test

  def setup
    @order = Order.new()
    @order1 = Order.new(base_price: 100, number_of_workers: 5, product_type: 'food')
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

  def test_order_has_total_price_attribute
    assert_equal(@order.total_price, nil)
  end

  def test_order_sets_input_attributes
    order_attributes = [@order1.base_price, @order1.number_of_workers, @order1.product_type]
    assert_equal([100, 5, 'food'], order_attributes)
  end
end
