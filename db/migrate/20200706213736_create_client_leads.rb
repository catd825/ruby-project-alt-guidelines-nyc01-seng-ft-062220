class CreateClientLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :client_leads do |t|
      t.string :name
    end
  end
end
