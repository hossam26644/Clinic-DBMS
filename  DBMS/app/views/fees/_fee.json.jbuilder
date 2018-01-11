json.extract! fee, :id, :patient_id, :examination_fees, :medication_fees, :extra_fees, :discount, :total, :created_at, :updated_at
json.url fee_url(fee, format: :json)