class User < ApplicationRecord
  has_many :orders
  has_many :music_records, through: :orders

  enum role: { 
    admin: 0,
    manager: 1,
    user: 2
  }
  
  validates :first_name, :last_name, :phone, :email, presence: true
  validates :email, uniqueness: true
  validates :phone, format: { with: /\A\d{10}\z/, message: "must be 10 digits" }
end
