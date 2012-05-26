class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.integer :package_id
      t.datetime :time
      t.string :in_or_out

      t.timestamps
    end
  end
end
