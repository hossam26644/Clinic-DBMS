class Patient < ApplicationRecord

  validates :p_ssn , presence: true
  validates :p_fname , presence: true
  validates :p_lname , presence: true

end
