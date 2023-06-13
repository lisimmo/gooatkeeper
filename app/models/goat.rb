class Goat < ApplicationRecord
  belongs_to :breed
  has_many :goat_treatments
  has_many :treatments, through: :goat_treatments
  accepts_nested_attributes_for :breed
  scope :with_breed, -> (include){ includes(:breed) if include.present? && include.to_bool }
  scope :with_treatments, -> (include){ includes(:treatments) if include.present? && include.to_bool }
end
