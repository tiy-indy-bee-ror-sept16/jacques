class TagSerializer < ActiveModel::Serializer

 attributes :name
 has_many :notes, through: :taggings


end
