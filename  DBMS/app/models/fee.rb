class Fee < ApplicationRecord
  belongs_to :patient
  validates :examination_fees , presence: true
  validates :medication_fees , presence: true
  validates :extra_fees , presence: true
  validates :discount , presence: true


end
