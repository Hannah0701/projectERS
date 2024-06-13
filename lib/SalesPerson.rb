class SalesPerson < Employee
    attr_accessor :sales_target

    def set_sales_target(sales_target)
        @sales_target = sales_target
    end
end
