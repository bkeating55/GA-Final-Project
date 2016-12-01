class Service < ApplicationRecord
  belongs_to :vehicles, dependent: :destroy

end
