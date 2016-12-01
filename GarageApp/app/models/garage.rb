class Garage < ApplicationRecord
  has_many :vehicles, dependent: :destroy
  validates :name, presence: true,
                     length: { minimum: 3 }
  
 end
