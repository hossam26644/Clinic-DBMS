class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.references :patient, foreign_key: true
      t.string :time
      t.date :date

      t.timestamps
    end
  end
end
