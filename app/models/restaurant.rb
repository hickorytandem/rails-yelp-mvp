class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # can call any restaurant instance e.g. @restaurant.reviews
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true
  # category must belong to ["chinese", "italian", "japanese", "french", "belgian"]
end
