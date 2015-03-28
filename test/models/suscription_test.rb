require 'test_helper'

class SuscriptionTest < ActiveSupport::TestCase
  def test_valid_suscription
    suscription = Suscription.new customer: Customer.first, channel: Channel.first, expire_date: Date.today + 1.year
    assert suscription.valid? 'valid suscription with customer and channel'
  end

  def test_invalid_suscription
    suscription = Suscription.new
    refute suscription.valid?, 'invalid suscription without customer and channel'
  end

  def test_invalid_expiration_date
    suscription = Suscription.new customer: Customer.first, channel: Channel.first, expire_date: Date.today - 1.year
    refute suscription.valid?, 'invalid suscription without a valid expire date'
  end
end
