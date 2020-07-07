class ClientAccount < ActiveRecord::Base
    belongs_to :client_lead
    has_many :projects
    has_many :employees, through: :projects
end