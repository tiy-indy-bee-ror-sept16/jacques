class NoteSerializer < ActiveModel::Serializer
  attributes :title, :body, :created_at, :updated_at
  has_one :user # There's one of these. 
  has_many :tags # There's a bunch of these. Make it an array
end
