class Comment < ApplicationRecord
  belongs_to :product
  after_save :calculate_product_note

  def calculate_product_note
    comments = Comment.where(product_id: self.product_id)
    average_note = comments.average(:note)
    comments_nbr = comments.count
    self.product.update({note:average_note,comments_nbr:comments_nbr})
  end
end
