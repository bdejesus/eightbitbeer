class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.integer :recipe_id
      t.float :abv
      t.text :notes
      t.integer :rating
      t.boolean :starred
      t.float :starting_gravity

      t.timestamps
    end
  end
end
