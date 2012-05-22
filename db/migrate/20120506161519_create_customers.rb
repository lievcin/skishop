class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :store_id
      t.string :first_name
      t.string :last_name
      t.string :country
      t.string :phone
      t.string :hotel

      t.timestamps
    end
  end
end
