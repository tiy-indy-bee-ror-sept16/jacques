class Note < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings

  validates :body, :title, presence: true

end
