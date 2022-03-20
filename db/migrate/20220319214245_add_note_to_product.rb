class AddNoteToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :note, :float, default: 0
    add_column :products, :comments_nbr, :integer, default: 0
  end
end
