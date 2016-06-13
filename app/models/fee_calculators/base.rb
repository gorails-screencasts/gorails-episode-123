module FeeCalculators
  class Base
    attr_reader :customer
    delegate :fee, :tenants, :amount_per_tenant

    def initialize(customer)
      @customer = customer
    end
  end
end

