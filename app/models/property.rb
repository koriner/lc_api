class Property < ApplicationRecord
  validates :lon, presence: true
  validates :lat, presence: true
end