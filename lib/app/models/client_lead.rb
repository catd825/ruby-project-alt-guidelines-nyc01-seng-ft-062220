class ClientLead < ActiveRecord::Base
    has_many :client_accounts
    has_many :projects, through: :client_accounts
    has_many :employees, through: :client_accounts
    has_many :project_employees, through: :projects
    has_many :project_employees, through: :employees

    



end


