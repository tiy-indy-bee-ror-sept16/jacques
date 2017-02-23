class Tag < ApplicationRecord
  validates_presence_of :name

  has_many :taggings
  has_many :notes, through: :taggings

  default_scope { order(name: :desc) }
end
