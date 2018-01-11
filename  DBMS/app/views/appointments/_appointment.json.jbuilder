json.extract! appointment, :id, :patient_id, :time, :date, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)