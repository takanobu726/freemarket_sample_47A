class BottomCategory < ApplicationRecord
  has_many :items
  belongs_to :mid_category
end
