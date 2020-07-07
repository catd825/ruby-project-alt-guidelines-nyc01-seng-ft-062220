class ClientLead < ActiveRecord::Base
    has_many :client_accounts
    has_many :projects, through: :client_accounts
    has_many :employees, through: :projects
    # binding.pry
end
