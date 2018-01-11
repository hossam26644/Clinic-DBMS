json.extract! prescreption, :id, :patient_id, :diagnosis, :medications, :doctors_comments, :created_at, :updated_at
json.url prescreption_url(prescreption, format: :json)