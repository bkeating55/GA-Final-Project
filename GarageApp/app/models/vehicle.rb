class Vehicle < ApplicationRecord
  belongs_to :garage
  has_many :services
end
