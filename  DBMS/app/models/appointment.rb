class Appointment < ApplicationRecord
  belongs_to :patient
  validates :patient, presence: true
  validates :date, inclusion: { in: (Date.today..Date.today+5.years) }


end
