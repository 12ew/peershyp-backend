class Expat < ApplicationRecord
  has_secure_password

  has_many :requests
  has_many :trips, through: :requests
  has_many :travelers, through: :trips

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :street, presence: true
  validates :city, presence: true
  validates :zip_code, presence: true
  validates :password, presence: true
  validates :phone_number, presence: true
  # validates :identification_num, presence: true
end
