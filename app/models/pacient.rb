class Pacient < ApplicationRecord
  belongs_to :locations
  belongs_to :responsibles
  belongs_to :species
end
