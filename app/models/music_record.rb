class MusicRecord < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders
  
  validates :title, :price, :description, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
