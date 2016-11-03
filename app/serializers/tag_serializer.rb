class TagSerializer < ActiveModel::Serializer
  attributes :name

  belongs_to :notes
end
