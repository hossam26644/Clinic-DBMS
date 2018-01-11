class CreatePrescreptions < ActiveRecord::Migration[5.0]
  def change
    create_table :prescreptions do |t|
      t.references :patient, foreign_key: true
      t.string :diagnosis
      t.text :medications
      t.text :doctors_comments

      t.timestamps
    end
  end
end
