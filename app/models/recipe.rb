class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients
  accepts_nested_attributes_for :ingredients, allow_destroy: true
  has_many :recipe_tags
  has_many :tags, through: :recipe_tags
end
