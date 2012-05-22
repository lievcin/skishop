class Status < ActiveRecord::Migration
  def up
  	add_column("skis", "in_store", :boolean)
    add_column("boots", "in_store", :boolean)
  end

  def down
  	remove_column("skis", "in_store")
    remove_column("boots", "in_store")
  end
end
