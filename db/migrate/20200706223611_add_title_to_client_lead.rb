class AddTitleToClientLead < ActiveRecord::Migration[5.2]
  def change
    add_column :client_leads, :title, :string
  end
end
