class CreateComments < ActiveRecord::Migration[6.1]
  def change
    drop_table :comments
    create_table :comments do |t|
      t.string :message
      t.float :note
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
