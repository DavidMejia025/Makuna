class FarmersProduct < ApplicationRecord
  belongs_to :farmer
  belongs_to :product

  scope :urgent, -> { where(urgent: 1) }
end
