class Storefields < ActiveRecord::Migration
  def up
    add_column("stores", "store_name", :string)
    add_column("stores", "owner_first_name", :string)
    add_column("stores", "owner_last_name", :string)
    add_column("stores", "country", :string)
    add_column("stores", "city", :string)
    add_column("stores", "phone", :string)
  end

  def down
    remove_column("stores", "store_name")
    remove_column("stores", "owner_first_name")
    remove_column("stores", "owner_last_name")
    remove_column("stores", "country")
    remove_column("stores", "city")
    remove_column("stores", "phone")
  end
end
