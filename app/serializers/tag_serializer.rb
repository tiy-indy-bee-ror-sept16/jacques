class TagSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :taggings
  has_many :notes through: :taggings

end
