class Tag < ApplicationRecord
  default_scope {order(name: :desc)}

  has_many :notes, through: :taggings
  has_many :taggings
  validates :name, presence: true


end
