class ClientAccount < ActiveRecord::Base
    belongs_to :client_lead
    has_many :projects
    has_many :employees
    has_many :project_employees, through: :projects
    has_many :project_employees, through: :employees
end