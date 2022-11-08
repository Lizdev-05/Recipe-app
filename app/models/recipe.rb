class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 500 }
  validate :cooking_time, presence: true, length: { maximum: 20 }
  validate :preparation_time, presence: true, length: { maximum: 20 }
end
