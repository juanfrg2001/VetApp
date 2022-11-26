class Diary < ApplicationRecord
  belongs_to :medicals
  belongs_to :pacients
end
