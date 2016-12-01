class Service < ApplicationRecord
  belongs_to :vehicles, dependent: :destroy
  has_one :garage, through: :vehicles
end
