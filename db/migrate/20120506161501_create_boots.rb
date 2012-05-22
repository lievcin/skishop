class CreateBoots < ActiveRecord::Migration
  def change
    create_table :boots do |t|
      t.integer :number
      t.integer :size
      t.string :brand
      t.string :condition
      t.integer :store_id
      t.boolean :in_store
      t.boolean :available
      t.timestamps
    end
  end
end
