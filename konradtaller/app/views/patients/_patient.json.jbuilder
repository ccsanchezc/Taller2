json.extract! patient, :id, :document, :name, :lastname, :bithdate, :created_at, :updated_at
json.url patient_url(patient, format: :json)
