class Manager < Employee
    attr_accessor :department

    def set_department(department)
        @department = department
    end
end
