class GifSerializer < ActiveModel::Serializer
  attributes :id, :name, :img_url, :music, :likes

  has_many :comments
end
