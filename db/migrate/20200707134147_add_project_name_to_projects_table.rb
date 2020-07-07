class AddProjectNameToProjectsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :project_name, :string
  end
end
