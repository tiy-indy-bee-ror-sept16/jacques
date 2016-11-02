class Note < ApplicationRecord

  has_many :tags :through :taggings
  has_many :taggings,
  validate_presence_of :title, :body



end
