class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.references :patient, foreign_key: true
      t.string :current_disease
      t.text :family_history
      t.text :diseases_history
      t.text :doctor_notes

      t.timestamps
    end
  end
end
