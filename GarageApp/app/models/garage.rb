class Garage < ApplicationRecord
  has_many :vehicles, dependent: :destroy
  validates :name, presence: true,
                     length: { minimum: 3 }
  has_one :service, through: :vehicles
 end
