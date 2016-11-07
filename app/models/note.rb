class Note < ApplicationRecord
  validates_presence_of :title, :body

  has_many :taggings
  has_many :tags, through: :taggings
end
