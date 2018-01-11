class CreateFees < ActiveRecord::Migration[5.0]
  def change
    create_table :fees do |t|
      t.references :patient, foreign_key: true
      t.integer :examination_fees
      t.integer :medication_fees
      t.integer :extra_fees
      t.integer :discount
      t.integer :total

      t.timestamps
    end
  end
end
