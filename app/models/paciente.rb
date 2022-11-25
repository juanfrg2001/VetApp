class Paciente < ApplicationRecord
  belongs_to :sede
  belongs_to :responsable
  belongs_to :tipo_especie
end
