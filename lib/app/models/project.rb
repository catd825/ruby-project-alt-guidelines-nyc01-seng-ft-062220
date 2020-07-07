class Project < ActiveRecord::Base
    belongs_to :client_account
    belongs_to :employee
end
