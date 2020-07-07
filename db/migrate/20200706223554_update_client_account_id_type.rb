class UpdateClientAccountIdType < ActiveRecord::Migration[5.2]
  def change
    remove_column :client_accounts, :client_lead_id
  end
end
