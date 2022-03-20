class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :stock, :comments_nbr, :note
  belongs_to :category
  has_many :comments
end
