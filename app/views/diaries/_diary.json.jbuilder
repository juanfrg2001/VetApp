json.extract! diary, :id, :medicals_id, :pacients_id, :horario, :fecha, :created_at, :updated_at
json.url diary_url(diary, format: :json)
