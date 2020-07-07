class Project < ActiveRecord::Base
    belongs_to :client_account
    belongs_to :employee
    # binding.pry
end