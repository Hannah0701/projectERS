class Employee
    attr_accessor :employee_id, :name, :age, :job_title, :salary

    def initialize(employee_id, name, age, job_title, salary)
        @employee_id = employee_id
        @name = name
        @age = age
        @job_title = job_title
        @salary = salary
    end
end