require './test_helper'
require 'packaging'

class TestOrderPricing < MiniTest::Test

  def setup
    @order1 = Order.new()
    @order2 = Order.new(base_price: 1299.99, number_of_workers: 3, product_type: 'food')
  end

  def test_order_object_is_instance_of_order
    assert_instance_of(Order, @order1)
  end

  def test_order_has_base_price_attribute
    assert_equal(@order1.base_price, nil)
  end

  def test_order_has_number_of_workers_attribute
    assert_equal(@order1.number_of_workers, nil)
  end

  def test_order_has_product_type_attribute
    assert_equal(@order1.product_type, nil)
  end

  def test_order_has_total_price_attribute
    assert_equal(@order1.total_price, nil)
  end

  def test_order_sets_input_attributes
    order_attributes = [@order2.base_price, @order2.number_of_workers, @order2.product_type]
    assert_equal([1299.99, 3, 'food'], order_attributes)
  end

  def test_get_worker_markup_rate
    assert_equal(0.036, @order2.get_worker_markup_rate.round(3))
  end

  def test_get_product_type_markup_rate
    assert_equal(0.13, @order2.get_product_type_markup_rate)
  end

  def test_calculate_price_with_flat_markup
    assert_equal(1364.9895, @order2.get_price_with_flat_markup.round(4))
  end
end
