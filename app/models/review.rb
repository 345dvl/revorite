class Review < ApplicationRecord
  validates :rate, presence: true
  validates :title, presence: true, length: { maximum: 50 } 
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 100000000 }, allow_blank: true

  belongs_to :post
end
