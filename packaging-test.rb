require './test_helper'
require 'packaging'

class TestOrderPricing < MiniTest::Test

  def setup
    @order = Order.new()
    @order1 = Order.new(base_price: 1299.99, number_of_workers: 3, product_type: 'food')
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
    assert_equal([1299.99, 3, 'food'], order_attributes)
  end

  def test_get_worker_markup_rate
    worker_markup = WORKER_MARKUP * @order1.number_of_workers
    assert_equal(worker_markup, @order1.get_worker_markup_rate)
  end
end
