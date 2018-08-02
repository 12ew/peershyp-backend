class Traveler < ApplicationRecord
  has_secure_password

  has_many :trips
  has_many :requests, through: :trips
  has_many :expats, through: :requests

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :street, presence: true
  validates :city, presence: true
  validates :zip_code, presence: true
  validates :password, presence: true
  validates :phone_number, presence: true
  validates :identification_num, presence: true
end
