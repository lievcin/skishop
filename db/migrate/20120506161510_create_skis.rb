class CreateSkis < ActiveRecord::Migration
  def change
    create_table :skis do |t|
      t.integer :number
      t.integer :size
      t.string :brand
      t.string :condition
      t.integer :store_id

      t.timestamps
    end
  end
end