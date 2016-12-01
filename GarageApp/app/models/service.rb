class Service < ApplicationRecord
  belongs_to :vehicle, dependent: :destroy

end
