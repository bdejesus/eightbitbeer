class CreateLogEntries < ActiveRecord::Migration
  def change
    create_table :log_entries do |t|
      t.integer :batch_id
      t.integer :step
      t.datetime :date
      t.float :gravity
      t.float :temperature
      t.text :notes

      t.timestamps
    end
  end
end
