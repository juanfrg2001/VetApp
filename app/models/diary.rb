class Diary < ApplicationRecord
  belongs_to :medical
  belongs_to :pet
end
