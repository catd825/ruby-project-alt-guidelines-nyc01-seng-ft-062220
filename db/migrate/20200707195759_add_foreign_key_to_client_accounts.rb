class AddForeignKeyToClientAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :project_employees, :client_account_id, :integer
  end
end
