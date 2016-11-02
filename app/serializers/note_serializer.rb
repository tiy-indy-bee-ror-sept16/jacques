class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :body

  has_many :taggings
  has_many :tags through: :taggings

end
