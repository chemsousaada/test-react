class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    drop_table :products
    create_table :products do |t|
      t.string :name
      t.float :price
      t.references :category, null: false, foreign_key: true
      t.integer :stock

      t.timestamps
    end
  end
end
