class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.integer :package_id
      t.datetime :check_in
      t.datetime :check_out

      t.timestamps
    end
  end
end
