class Employee < ActiveRecord::Base
    has_many :projects
    has_many :client_accounts, through: :projects
    has_many :client_leads, through: :projects
    # binding.pry
end
