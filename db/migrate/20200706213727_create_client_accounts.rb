class CreateClientAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :client_accounts do |t|
      t.string :client_name
      t.string :brand_name
      t.integer :client_lead_id
    end   
  end
end
