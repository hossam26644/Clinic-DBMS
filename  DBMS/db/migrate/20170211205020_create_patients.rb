class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.float :p_ssn
      t.string :p_fname
      t.string :p_minit
      t.string :p_lname
      t.date :p_birthdate
      t.string :p_phonenume
      t.string :p_address_string
      t.text :p_complain
      t.date :p_age

      t.timestamps
    end
  end
end
