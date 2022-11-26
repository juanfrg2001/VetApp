class Pacient < ApplicationRecord
  belongs_to :location
  belongs_to :responsible
  belongs_to :specie
end