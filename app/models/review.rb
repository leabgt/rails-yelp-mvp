class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, numericality: { only_integer: true }, inclusion: { in: (0..5) }
  validates :content, :rating, presence: true
end
