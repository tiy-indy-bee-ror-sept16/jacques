class Tag < ApplicationRecord

  default_scope { order(name: :desc) }

  has_many :taggings
  has_many :notes, through: :taggings
  validates_presence_of :name

end
