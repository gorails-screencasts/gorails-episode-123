module FeeCalculators
  class Percentage < Base
    def call
      fee_as_float * tenants * amount_per_tenant
    end

    def fee_as_float
      (fee / 100.0)
    end
  end
end
