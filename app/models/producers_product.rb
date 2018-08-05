class ProducersProduct < ApplicationRecord
  belongs_to :producer
  belongs_to :product
end
