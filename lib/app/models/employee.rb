class Employee < ActiveRecord::Base
    belongs_to :client_account
    has_many :project_employees
    has_many :projects, through: :project_employees
    # binding.pry
end
