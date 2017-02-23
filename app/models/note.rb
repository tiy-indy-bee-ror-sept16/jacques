class Note < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings

  validates_presence_of :title,
                        presence: true

  validates_presence_of :body,
                        presence: true
end
