class MidCategory < ApplicationRecord
  has_many :bottom_categories
  belongs_to :top_category
end
