json.extract! history, :id, :patient_id, :current_disease, :family_history, :diseases_history, :doctor_notes, :created_at, :updated_at
json.url history_url(history, format: :json)