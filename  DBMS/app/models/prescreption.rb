class Prescreption < ApplicationRecord
  belongs_to :patient
  validates :patient, presence: true

end
