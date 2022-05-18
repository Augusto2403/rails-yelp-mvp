class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, numericality: { less_than_or_equal_to: 5, greater_than_or_equal_to: 0 }

  belongs_to :restaurant
end
