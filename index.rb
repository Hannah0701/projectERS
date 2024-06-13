require_relative './lib/Employee'
require_relative './lib/Manager'
require_relative './lib/SalesPerson'
require_relative './lib/EmployeeDatabase'

# User interface
database = EmployeeDatabase.new

loop do
    puts "1. Add Manager"
    puts "2. Add Salesperson"
    puts "3. Display Employees"
    puts "4. Exit"
    puts "Enter your choice: "
    choice = gets.chomp.to_i

    case choice
    when 1
        puts "Enter employee ID: "
        employee_id = gets.chomp
        puts "Enter name: "
        name = gets.chomp
        puts "Enter age: "
        age = gets.chomp.to_i
        puts "Enter job title: "
        job_title = gets.chomp
        puts "Enter salary: "
        salary = gets.chomp.to_i
        puts "Enter department: "
        department = gets.chomp

        manager = Manager.new(employee_id, name, age, job_title, salary)
        manager.set_department(department)
        database.add_employee(manager)
    when 2
        puts "Enter employee ID: "
        employee_id = gets.chomp
        puts "Enter name: "
        name = gets.chomp
        puts "Enter age: "
        age = gets.chomp.to_i
        puts "Enter job title: "
        job_title = gets.chomp
        puts "Enter salary: "
        salary = gets.chomp.to_i
        puts "Enter sales target: "
        sales_target = gets.chomp.to_i

        salesperson = SalesPerson.new(employee_id, name, age, job_title, salary)
        salesperson.set_sales_target(sales_target)
        database.add_employee(salesperson)
    when 3
        database.display_employees
    when 4
        break
    else
        puts "Invalid choice!"
    end
end