class GoatTreatment < ApplicationRecord
  # has_and_belongs_to_many :goat
  # has_and_belongs_to_many :treatment
  belongs_to :treatment
  belongs_to :goat
end
