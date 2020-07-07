class Project < ActiveRecord::Base
    belongs_to :client_account
    has_many :project_employees
    has_many :employees, through: :project_employees
    # binding.pry
end