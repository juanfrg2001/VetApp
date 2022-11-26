class Pet < ApplicationRecord
  belongs_to :location
  belongs_to :responsible
  belongs_to :species
end
