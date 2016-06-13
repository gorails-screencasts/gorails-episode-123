require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  test "monthly_fees fixed" do
    customer = Customer.new(
      fee_type: "fixed",
      fee: 100_00
    )

    assert_equal customer.monthly_fee, 100_00
  end

  test "monthly_fees fixed_per_tenant" do
    customer = Customer.new(
      fee_type: "fixed_per_tenant",
      fee: 100_00,
      tenants: 9
    )

    assert_equal customer.monthly_fee, 900_00
  end

  test "monthly_fees percentage" do
    customer = Customer.new(
      fee_type: "percentage",
      fee: 10_00,
      tenants: 12,
      amount_per_tenant: 400
    )

    assert_equal customer.monthly_fee, 480_00
  end
end
