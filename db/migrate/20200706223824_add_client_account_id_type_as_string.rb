class AddClientAccountIdTypeAsString < ActiveRecord::Migration[5.2]
  def change
    add_column :client_accounts, :client_lead_id, :string
  end
end
