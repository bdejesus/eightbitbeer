class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.string :step_type
      t.float :amount
      t.time :duration
      t.text :notes
      t.float :temperature

      t.timestamps
    end
  end
end
