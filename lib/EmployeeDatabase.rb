class EmployeeDatabase
    attr_accessor :employees

    def initialize
        @employees = []
    end

    def add_employee(employee)
        @employees << employee
    end

    def remove_employee(employee)
        @employees.delete(employee)
    end

    def display_employees
        @employees.each do |employee|
            puts "Employee ID: #{employee.employee_id}"
            puts "Name: #{employee.name}"
            puts "Age: #{employee.age}"
            puts "Job Title: #{employee.job_title}"
            puts "Salary: #{employee.salary}"
            puts "------------------------"
        end
    end
end
