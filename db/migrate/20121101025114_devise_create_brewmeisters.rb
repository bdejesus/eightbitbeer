class DeviseCreateBrewmeisters < ActiveRecord::Migration
  def change
    create_table(:brewmeisters) do |t|
      ## Database authenticatable
      t.string :email,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      t.timestamps
    end

    add_index :brewmeisters, :email,                :unique => true
    add_index :brewmeisters, :reset_password_token, :unique => true
    # add_index :brewmeisters, :confirmation_token,   :unique => true
    # add_index :brewmeisters, :unlock_token,         :unique => true
    # add_index :brewmeisters, :authentication_token, :unique => true
  end
end
