class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :recipe_id
      t.text :type
      t.float :amount
      t.time :duration
      t.text :notes
      t.float :temperature

      t.timestamps
    end
  end
end
