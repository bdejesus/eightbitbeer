class CreateStepsIngredientsTable < ActiveRecord::Migration
  def change
    create_table :ingredients_steps do |t|
      t.integer :step_id
      t.integer :ingredient_id
    end
  end
end
