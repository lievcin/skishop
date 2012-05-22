class DeviseCreateStores < ActiveRecord::Migration
  def change
    create_table(:stores) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :stores, :email,                :unique => true
    add_index :stores, :reset_password_token, :unique => true
    # add_index :stores, :confirmation_token,   :unique => true
    # add_index :stores, :unlock_token,         :unique => true
    # add_index :stores, :authentication_token, :unique => true
  end

end
