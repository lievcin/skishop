class ChangeSkiTyp < ActiveRecord::Migration
  def up
    remove_column("skis", "size")        
    add_column("skis", "size", :string, :limit => 25)        
    
  end

  def down
  end
end
