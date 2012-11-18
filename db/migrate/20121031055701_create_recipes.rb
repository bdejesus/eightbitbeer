class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :style
      t.text :description
      t.float :abv
      t.float :batch_size
      t.text :notes
      t.string :beer_type
      t.integer :brewer_id

      t.timestamps
    end
  end
end
