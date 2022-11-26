json.extract! diary, :id, :medical_id, :pet_id, :horario, :fecha, :created_at, :updated_at
json.url diary_url(diary, format: :json)
