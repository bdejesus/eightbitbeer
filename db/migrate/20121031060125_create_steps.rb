class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.int :recipe_id
      t.text :name
      t.float :amount
      t.time :time
      t.text :notes
      t.float :temperature

      t.timestamps
    end
  end
end
