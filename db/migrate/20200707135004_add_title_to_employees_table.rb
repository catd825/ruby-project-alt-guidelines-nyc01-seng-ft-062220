class AddTitleToEmployeesTable < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :employee_title, :string
  end
end
