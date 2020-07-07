class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :client_account_id
      t.string :employee_id
    end
  end
end
