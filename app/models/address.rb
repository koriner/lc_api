class Address < ApplicationRecord
  validates :full_address, presence: true
  validates :state, presence: true
  validates :postcode, presence: true
end