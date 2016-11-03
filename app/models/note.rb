class Note < ApplicationRecord

  has_many :taggings
  has_many :tags, through: :taggings

  validates_presence_of :title
  validates_presence_of :body

end
