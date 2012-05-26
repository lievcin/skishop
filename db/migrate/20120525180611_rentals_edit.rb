class RentalsEdit < ActiveRecord::Migration
  def up
    rename_column("rentals", "type", "in_or_out")    
  end

  def down
  end
end
