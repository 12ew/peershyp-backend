class Trip < ApplicationRecord
  belongs_to :traveler
  has_many :requests
  has_many :expats, through: :requests

  validates :departure_city, presence: true
  validates :destination_city, presence: true
  validates :depart_date, presence: true
  validates :arrival_date, presence: true
  validates :airline, presence: true
  validates :flight_num, presence: true
end
