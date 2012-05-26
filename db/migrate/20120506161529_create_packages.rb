class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :customer_id
      t.integer :ski_id
      t.integer :boot_id
      t.string :status
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
