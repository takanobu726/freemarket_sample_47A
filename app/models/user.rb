class User < ApplicationRecord
  has_many :items, dependent: :destroy
  has_one :profile, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :sell_items, dependent: :destroy
  has_many :trade_items, dependent: :destroy
  has_many :sold_items, dependent: :destroy
end
