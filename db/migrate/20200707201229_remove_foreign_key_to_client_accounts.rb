class RemoveForeignKeyToClientAccounts < ActiveRecord::Migration[5.2]
  def change
    remove_column :project_employees, :client_account_id, :integer
  end
end
