class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :measurement
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
