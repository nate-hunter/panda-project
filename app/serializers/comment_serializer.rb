class CommentSerializer < ActiveModel::Serializer
  attributes :id, :gif_id, :name, :comment
end
