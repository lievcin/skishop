class StatusBootsSkis < ActiveRecord::Migration
  def up
    add_column("skis", "available", :boolean)
    add_column("boots", "available", :boolean)
  end

  def down
    remove_column("skis", "available")
    remove_column("boots", "available")
  end
end