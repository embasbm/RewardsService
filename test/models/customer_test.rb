require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  def test_valid_customer
    customer = Customer.new name: "First Customer", email: "fcustomer@sky.co.uk"
    assert customer.valid?, "valid with a name and email"
  end

  def test_invalid_without_name
    customer = Customer.new email: "fcustomer@sky.co.uk"
    refute customer.valid?, "invalid without a name"
  end

  def test_invalid_without_email
    customer = Customer.new name: "First Customer"
    refute customer.valid?, "invalid without a email"
  end

  def test_invalid_with_repeated_email
    customer = Customer.new email: Customer.first.email
    refute customer.valid?, "invalid without a repeated email"
  end
end
