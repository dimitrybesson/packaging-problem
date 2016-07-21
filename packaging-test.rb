require './test_helper'
require 'packaging'

class TestOrderPricing < MiniTest::Test

  def setup
    @order1 = Order.new()
    @order2 = Order.new(base_price: 1299.99, number_of_workers: 3, product_type: 'food')
    @order3 = Order.new(base_price: 5432.00, number_of_workers: 1, product_type: 'drugs')
    @order4 = Order.new(base_price: 12456.95, number_of_workers: 4, product_type: 'books')
    @order5 = Order.new(base_price: 0, number_of_workers: 0, product_type: 'other')
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

  def test_get_total_additional_markup_rate
    assert_equal(0.166, @order2.get_total_additional_markup_rate)
  end

  def test_get_total_price_with_product_type_food
    assert_equal(1591.58, @order2.get_total_price)
  end

  def test_get_total_price_with_product_type_drugs
    assert_equal(6199.81, @order3.get_total_price)
  end

  def test_get_total_price_with_product_type_other
    assert_equal(13707.63, @order4.get_total_price)
  end

  def test_raise_exception_for_insufficient_input
    # assert_raises(ArgumentError, @order1.get_total_price)
    # @order1.get_total_price.must_raise ArgumentError.new("Insufficient input.")
    assert_raises ArgumentError do
      @order1.get_total_price
    end
  end

  def test_get_total_price_should_handle_0_inputs
    assert_equal(0, @order5.get_total_price)
  end
end
