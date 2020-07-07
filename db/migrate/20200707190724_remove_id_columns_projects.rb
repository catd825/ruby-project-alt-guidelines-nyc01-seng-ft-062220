class RemoveIdColumnsProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :client_account_id
    remove_column :projects, :employee_id
  end
end
