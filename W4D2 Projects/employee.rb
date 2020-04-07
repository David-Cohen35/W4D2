class Employee

    attr_reader :name, :title, :salary
    attr_accessor :boss

    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def assign_boss
        boss.get_employees(self) unless boss == nil
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end

end

class Manager < Employee

    attr_reader :employees

    def initialize(name, title, salary, boss = nil)
        super(name, title, salary, boss)
        @employees = []
    end

    def get_employees(employee)
        @employees << employee
    end

    def total_salary 
        total = 0
        @employees.each do |emp|
            if emp.is_a?(Manager)
                total += emp.total_salary
            else
                total += emp.salary
            end
        end
        total
    end

    def bonus(multiplier)
        self.total_salary * multiplier
    end

end





