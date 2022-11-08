class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validate :measurement, presence: true, length: { maximum: 20 }
  validate :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
