class CreateSkis < ActiveRecord::Migration
  def change
    create_table :skis do |t|
      t.integer :number
      t.string :size
      t.string :brand
      t.string :condition
      t.integer :store_id
      t.boolean :in_store
      t.boolean :available      
      t.timestamps
    end
  end
end
