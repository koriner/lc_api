class Lga < ApplicationRecord
  validates :code, uniqueness: true
  validates :name, presence: true
  validates :long_name, presence: true
end