class Item < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :items_brands
  has_many :brands, through: :items_brands
  belongs_to :user
  belongs_to :bottom_category
end
