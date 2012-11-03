class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :ingredient_type
      t.text :notes

      t.timestamps
    end
  end
end
