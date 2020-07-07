class ChangeProjectForeignIdToInteger3 < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :client_account_id, :integer
    add_column :projects, :employee_id, :integer
  end
end
