require './test_helper'
require 'packaging'

class TestOrderPricing < MiniTest::Test

  def test_order_object_is_instance_of_order
    @order = Order.new
    assert_instance_of(Order, @order)
  end
end
