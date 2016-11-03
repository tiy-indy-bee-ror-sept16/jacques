class Tag < ApplicationRecord
  validates_presence_of :name

  has_many :taggings
  has_many :notes, through: :taggings

  def to_param
    name
  end

end
