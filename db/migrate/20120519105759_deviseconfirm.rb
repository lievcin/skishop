class Deviseconfirm < ActiveRecord::Migration
  def change
    alter_table(:stores) do |t|
      t.confirmable
    end
  end
end
