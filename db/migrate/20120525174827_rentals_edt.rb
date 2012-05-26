class RentalsEdt < ActiveRecord::Migration
  def up
    rename_column("rentals", "check_in", "time")
    remove_column("rentals", "check_out")
    add_column("rentals", "type", :string, :limit => 25)    
  end

  def down
  end
end