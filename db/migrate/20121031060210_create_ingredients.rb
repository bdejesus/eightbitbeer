class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :step_id
      t.string :type
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
