class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :ship
  has_many :users
  has_many :ships
end
