class Tag < ApplicationRecord

  has_many :taggings,
  has_many :notes,
  validate_presence_of :name

end
