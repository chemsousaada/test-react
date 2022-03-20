class CommentSerializer < ActiveModel::Serializer
  attributes :id, :message, :note
  belongs_to :product
end
