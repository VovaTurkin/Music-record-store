class Order < ApplicationRecord
  belongs_to :user
  belongs_to :music_record

  validates :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  before_validation :set_rental_period, if: :rent?, on: :create

  private

  def set_rental_period
    self.rent_date = Time.now
    self.return_date = rent_date + 3.months
  end
end
