class Request < ApplicationRecord
  belongs_to :expat
  belongs_to :trip

  validates :departing_city, presence: true
  validates :destination_city, presence: true
  validates :weight, presence: true
  validates :item_cost, presence: true
  validates :item_url, presence: true
  validates :quantity, presence: true
end
