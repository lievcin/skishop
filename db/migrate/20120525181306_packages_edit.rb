class PackagesEdit < ActiveRecord::Migration
  def up
    add_column("packages", "status", :string, :limit => 25)        
  end

  def down
  end
end
